<?php

namespace backend\controllers;

use common\models\Anhsanpham;
use common\models\Catproduct;
use common\models\Properties;
use common\models\Propertiesvalueproduct;
use common\models\Thuoctinhproduct;
use Yii;
use common\models\Product;
use common\models\search\ProductSearch;
use yii\filters\AccessControl;
use yii\helpers\Json;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use \yii\web\Response;
use yii\helpers\Html;
use yii\web\UploadedFile;

/**
 * ProductController implements the CRUD actions for Product model.
 */
class ProductController extends Controller
{
    /**
     * @inheritdoc
     */


    /**
     * Lists all Product models.
     * @return mixed
     */
    public function actionIndex()
    {    
        $searchModel = new ProductSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->sort =  [
            'defaultOrder' => [
                'cat_product_id' => SORT_ASC,
                'ord' => SORT_ASC,
            ]];
        if(isset(Yii::$app->session['productPaging']) && Yii::$app->session['productPaging']=="false"){
            $dataProvider->pagination=false;
        }
        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }


    /**
     * Displays a single Product model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {   
        $request = Yii::$app->request;
        if($request->isAjax){
            Yii::$app->response->format = Response::FORMAT_JSON;
            return [
                    'title'=> "Product #".$id,
                    'content'=>$this->renderAjax('view', [
                        'model' => $this->findModel($id),
                    ]),
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                            Html::a('Edit',['update','id'=>$id],['class'=>'btn btn-primary','role'=>'modal-remote'])
                ];    
        }else{
            return $this->render('view', [
                'model' => $this->findModel($id),
            ]);
        }
    }

    /**
     * Creates a new Product model.
     * For ajax request will return json object
     * and for non-ajax request if creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $request = Yii::$app->request;
        $model = new Product();

        if($request->isAjax){
            /*
            *   Process for ajax request
            */
            Yii::$app->response->format = Response::FORMAT_JSON;
            if($request->isGet){
                return [
                    'title'=> "Create new Product",
                    'content'=>$this->renderAjax('create', [
                        'model' => $model,
                    ]),
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                                Html::button('Save',['class'=>'btn btn-primary','type'=>"submit"])

                ];
            }else if($model->load($request->post()) && $model->save()){
                return [
                    'forceReload'=>'#crud-datatable-pjax',

                    'title'=> "Create new Product",
                    'content'=>'<span class="text-success">Create Product success</span>',
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                            Html::a('Create More',['create'],['class'=>'btn btn-primary','role'=>'modal-remote'])

                ];
            }else{
                return [
                    'title'=> "Create new Product",
                    'content'=>$this->renderAjax('create', [
                        'model' => $model,
                    ]),
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                                Html::button('Save',['class'=>'btn btn-primary','type'=>"submit"])

                ];
            }
        }else{
            /*
            *   Process for non-ajax request
            */
            if ($model->load($request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            } else {
                return $this->render('create', [
                    'model' => $model,
                ]);
            }
        }
       
    }

    /**
     * Updates an existing Product model.
     * For ajax request will return json object
     * and for non-ajax request if update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $request = Yii::$app->request;
        $model = $this->findModel($id);
//        if(strtolower(Yii::$app->user->identity->username)!='superadmin' && $model->lang_id!=Yii::$app->user->identity->id){
//            return $this->redirect(['news/index']);
//        }
        if($request->isAjax){
            /*
            *   Process for ajax request
            */
            Yii::$app->response->format = Response::FORMAT_JSON;
            if($request->isGet){

                return [
                    'title'=> "Update Product #".$id,
                    'content'=>$this->renderAjax('update', [
                        'model' => $model,
                    ]),
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                                Html::button('Save',['class'=>'btn btn-primary','type'=>"submit"])
                ];         
            }else if($model->load($request->post()) && $model->save()){

                return [
                    'forceReload'=>'#crud-datatable-pjax',
                    'title'=> "Product #".$id,
                    'content'=>$this->renderAjax('index', [
                        'model' => $model,
                    ]),
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                            Html::a('Edit',['update','id'=>$id],['class'=>'btn btn-primary','role'=>'modal-remote'])
                ];    
            }else{
                 return [
                    'title'=> "Update Product #".$id,
                    'content'=>$this->renderAjax('update', [
                        'model' => $model,
                    ]),
                    'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"]).
                                Html::button('Save',['class'=>'btn btn-primary','type'=>"submit"])
                ];        
            }
        }else{
            /*
            *   Process for non-ajax request
            */
            if ($model->load($request->post()) && $model->save()) {
                return $this->redirect(Yii::$app->urlManager->createUrl('product'));
            } else {
                return $this->render('update', [
                    'model' => $model,
                ]);
            }
        }
    }

    /**
     * Delete an existing Product model.
     * For ajax request will return json object
     * and for non-ajax request if deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $request = Yii::$app->request;
        $model=$this->findModel($id);
//            if(strtolower(Yii::$app->user->identity->username)!='superadmin' && $model->lang_id!=Yii::$app->user->identity->id){
//                return $this->redirect(['news/index']);
//            }
            $model->delete();

        if($request->isAjax){
            /*
            *   Process for ajax request
            */
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ['forceClose'=>true,'forceReload'=>'#crud-datatable-pjax'];
        }else{
            /*
            *   Process for non-ajax request
            */
            return $this->redirect(['index']);
        }


    }

     /**
     * Delete multiple existing Product model.
     * For ajax request will return json object
     * and for non-ajax request if deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionBulkdelete()
    {
        if(strtolower(Yii::$app->user->identity->username)!='superadmin'){
            return $this->redirect(['news/index']);
        }
        $request = Yii::$app->request;
        $pks = explode(',', $request->post( 'pks' )); // Array or selected records primary keys
        foreach ( $pks as $pk ) {
            $model = $this->findModel($pk);
            $model->delete();
        }

        if($request->isAjax){
            /*
            *   Process for ajax request
            */
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ['forceClose'=>true,'forceReload'=>'#crud-datatable-pjax'];
        }else{
            /*
            *   Process for non-ajax request
            */
            return $this->redirect(['index']);
        }
       
    }

    /**
     * Finds the Product model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Product the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Product::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    public function actionNewform(){
        $model= new Product();
        $request = Yii::$app->request;

        if ($model->load($request->post()) && $model->save()){
            Product::updateAll(['ord'=>$model->id],['id'=>$model->id]);
            return $this->redirect(['index']);
        }else{

        }
        return $this->render('newform',['model'=>$model]);
    }
    public function actionXoaanh()
    {
        if (isset($_POST['id'])){
            $hinhAnh = Anhsanpham::findOne($_POST['id']);
            $path = dirname(dirname(__DIR__)) . "/images/product/" . $hinhAnh->image;
            if (is_file($path))
                unlink($path);
            $hinhAnh->delete();
            return 1;
        }
    }
    public function actionDefaultimg(){
        if (isset($_POST['id'])){
            $anh = Anhsanpham::findOne($_POST['id']);
            $ansps = Anhsanpham::find()->where(['product_id'=>$anh->product_id])->all();
            foreach ($ansps as $ansp){
                Anhsanpham::updateAll(['default'=>0],'id=:id',[':id'=>$ansp->id]);
            }
            Anhsanpham::updateAll(['default'=>1],'id=:id',[':id'=>$anh->id]);
        }
    }
    public function actionUpdatehome()
    {
        $catproduct = Product::find()->where(['id'=>$_POST['id']])->one();
        Product::updateAll(['home'=>(1-$catproduct->home)],['id'=>$catproduct->id]);
    }
    public function actionUpdatehot()
    {
        $catproduct = Product::find()->where(['id'=>$_POST['id']])->one();
        Product::updateAll(['hot'=>(1-$catproduct->hot)],['id'=>$catproduct->id]);
    }

    public function actionUpdateactive()
    {
        $catproduct = Product::find()->where(['id'=>$_POST['id']])->one();
        Product::updateAll(['active'=>(1-$catproduct->active)],['id'=>$catproduct->id]);
    }
    public function actionUpdateord()
    {
        $catproduct = Product::find()->where(['id'=>$_POST['id']])->one();
        Product::updateAll(['ord'=>$_POST['value']],['id'=>$catproduct->id]);
    }
    public function actionUpdatenew()
    {
        $catproduct = Product::find()->where(['id'=>$_POST['id']])->one();
        Product::updateAll(['new'=>(1-$catproduct->new)],['id'=>$catproduct->id]);
    }

    public function actionAddnewrow(){
        $indexsanpham= $_POST['indexsanpham'];
        $giatri= $_POST['giatri'];
        $propertiesProducts  = new Propertiesvalueproduct();

        echo  Json::encode([
            'newRow'=>$this->renderAjax('_newrow',['indexsanpham'=>$indexsanpham,'propertiesProducts'=>$propertiesProducts,'giatri'=>$giatri,'types'=>$_POST['types']])
        ]);
    }

    public function actionBindproperties(){
        if (isset($_POST['idcatproduct'])){
            $properties = Properties::getThongso($_POST['idcatproduct']);
            echo Json::encode([
               'property'=>$this->renderAjax('_property',['properties'=>$properties])
            ]);
        }
    }

    public function actionImport()
    {
        $file = UploadedFile::getInstanceByName('fileSanpham');

        if (!is_null($file)) {
            //upload file excel
            $namefile = \func::khongdau(time() .'-'. $file->name);
            $pathFile = dirname(dirname(__DIR__)) . '/file_import/' . $namefile;
            $file->saveAs($pathFile);

            // đọc file excel

            $inputFileType = \PHPExcel_IOFactory::identify($pathFile);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            $data = $objReader->load($pathFile)->getSheet(0)->toArray(null, true, true, true);
            // lay du lieu tu dong 2 tro di

            $t = time();
            try {
                foreach ($data as $index => $item) {
                    if ($index == 0) continue;
                    $sanpham = new Product();
                    $sanpham->name = $item['A'];
                    $sanpham->brief = $item['C'];
                    $sanpham->decription = $item['D'];
                    $sanpham->retail = $item['E'];
                    $sanpham->sale = $item['F'];
                    $sanpham->status = (int)$item['G'];
                    $sanpham->ord = (int)$item['H'];
                    $sanpham->home = (int)$item['I'];
                    $sanpham->hot = (int)$item['J'];
                    $sanpham->active = (int)$item['K'];
                    $sanpham->cat_product_id = (int)$item['L'];
                    $sanpham->brand_id = (int)$item['M'];

                    if ($sanpham->save()) {
                        $hinhanh = new Anhsanpham();
                        $pat = '/[^\.]+$/';
                        preg_match($pat, $item['B'], $extension);
                        $fileName = $t . '-' . $index . '.' . $extension[0];
                        $streamContext = stream_context_create([
                            'ssl' => [
                                'verify_peer' => false,
                                'verify_peer_name' => false
                            ]
                        ]);
                        $contents = file_get_contents($item['B'], false, $streamContext);
                        $path = dirname(dirname(__DIR__)) . '/images/product/' . $fileName;
                        $handle = fopen($path, "w");
                        fwrite($handle, $contents);
                        echo "Success";
                        fclose($handle);
                        $hinhanh->product_id = $sanpham->id;
                        $hinhanh->image = '/images/product/' . $fileName;
                        $hinhanh->default = 1;
                        $hinhanh->save();
                    }
                }
            }catch (\Exception $ex){

            }finally{
                unlink($pathFile);
            }

        }
        
        return $this->redirect(['index']);
    }

    public function actionAddproperties($id){
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model = Product::find()->where(['id'=>$id])->one();
        $listthuoctinh = \common\models\Thuoctinh::find()->all();
        return [
            'title'=> "Cập nhật phiên bản sản phẩm #<a style=';font-size: 18px'>".Product::findOne(['id'=>$id])->name."</a>",
            'content'=>$this->renderPartial('addproperties',[
                'model'=>$model,
                'dataketqua'=>$this->renderPartial('tableketqua',[
                    'model'=>$model,
                    'data'=>Thuoctinhproduct::find()->where(['product_id'=>$model->id])->all(),
                    'listthuoctinh'=>$listthuoctinh
                ])
            ]),
            'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"])
                .Html::button('Lưu lại',['class'=>'btn blue pull-right btn-luu-thuoctinh','data-target'=>$id])
        ];
    }

    public function actionAddsingleproperties($numpost){
        return $this->renderPartial('singleproperties',['num'=>$numpost]);
    }
    public function actionSavethuoctinh(){
        if(isset($_POST['id'])){
            $id = $_POST['id'];
            $errors="";
            $status="success";
            foreach ($_POST['data'] as $index =>$value){
                $thuoctinhproduct= new Thuoctinhproduct();
                $thuoctinhproduct->product_id=$id;
                $thuoctinhproduct->giagoc=$value['giagoc'];
                $thuoctinhproduct->gia=$value['gia'];
                $thuoctinhproduct->conhang=$value['conhang'];
                $thuoctinhproduct->thuoctinh_id=Json::encode($value['listthuoctinh']);
                if(is_null(Thuoctinhproduct::findOne(['product_id'=>$id,'thuoctinh_id'=>$thuoctinhproduct->thuoctinh_id])))
                {
                    if(!$thuoctinhproduct->save()){
                        $errors.=$thuoctinhproduct->getFirstError();
                        $status="fail";
                    }
                }else{
                    $errors.="Có sự trùng lặp các thuộc tính";
                    $status="fail";
                }
            }
            return Json::encode(['status'=>$status,'errors'=>$errors]);
        }else{
            return Json::encode(['status'=>'fail','errors'=>"Thiếu tham số"]);
        }
    }
    public function actionDeletethuoctinh(){
        if(isset($_POST['id'])){
            $id = $_POST['id'];
            $errors="";
            $status="success";
            $thuoctinh = Thuoctinhproduct::findOne(['id'=>$id]);
            if(!$thuoctinh->delete()){
                $status='fail';
                $errors=$thuoctinh->getFirstError();
            }
            return Json::encode(['status'=>$status,'errors'=>$errors]);
        }else{
            return Json::encode(['status'=>'fail','errors'=>"Thiếu tham số"]);
        }
    }
    public function actionDeleteanh($id){
        $anhsanpham = Anhsanpham::findOne(['id'=>$id]);
        if(is_file(Yii::getAlias('@root').$anhsanpham->image)){
            unlink(Yii::getAlias('@root').$anhsanpham->image);
        }
        if(is_file(Yii::getAlias('@root').$anhsanpham->thumb)){
            unlink(Yii::getAlias('@root').$anhsanpham->thumb);
        }
        return Anhsanpham::deleteAll(['id'=>$id]);
    }
    public function actionGetviewthuoctinh($id){
        $listthuoctinh = \common\models\Thuoctinh::find()->all();
        $thuoctinhsanpham = \common\models\Thuoctinhproduct::find()->where(['product_id' => $id])->all();
        Yii::$app->response->format = Response::FORMAT_JSON;

        return [
            'title'=> "Xem phiên bản sản phẩm #<a style=';font-size: 18px'>".Product::findOne(['id'=>$id])->name."</a>",
            'content'=>$this->renderPartial('viewphienban',[
                'listthuoctinh'=>$listthuoctinh,
                'thuoctinhsanpham'=>$thuoctinhsanpham
            ]),
            'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"])
        ];
    }
    public function actionCopy($id){

        Yii::$app->response->format = Response::FORMAT_JSON;
        $product = Product::findOne(['id'=>$id]);
        if(!is_null($product)){
            $productnew= new Product();
            $productnew->attributes=$product->attributes;

            $productnew->save();
            $productnew->name=$productnew->name." (Copy ".$productnew->id.")";
            $productnew->url=\func::taoduongdan($productnew->name);
            $productnew->save();
            $thuoctinh = Thuoctinhproduct::find()->where(['product_id'=>$product->id])->all();
            foreach ($thuoctinh as $thuoctinhs){
                $thuoctinhnew =new Thuoctinhproduct();
                $thuoctinhnew->attributes=$thuoctinhs->attributes;
                $thuoctinhnew->product_id=$productnew->id;
                $thuoctinhnew->save();
            }

            $anhsanpham = Anhsanpham::find()->where(['product_id'=>$product->id])->all();
            foreach ($anhsanpham as $anhsanphams){
                $anhsanphamnew = new Anhsanpham();
                $anhsanphamnew->attributes=$anhsanphams->attributes;
                $anhsanphamnew->product_id=$productnew->id;
                $anhsanphamnew->image=str_replace("/images/product/","/images/product/".rand(0,100000),$anhsanphamnew->image);
                $anhsanphamnew->thumb=str_replace("/images/product/thumb/","/images/product/thumb/".rand(0,100000),$anhsanphamnew->thumb);
                if(copy(dirname(dirname(__DIR__)) .$anhsanphams->image,dirname(dirname(__DIR__)) .$anhsanphamnew->image) && copy(dirname(dirname(__DIR__)) .$anhsanphams->thumb,dirname(dirname(__DIR__)) .$anhsanphamnew->thumb)){
                    $anhsanphamnew->save();
                }
            }
            return[
                'forceReload'=>'#crud-datatable-pjax',// cai nay no force reload theo kiem truc cua no r, meo sua dc
                'title'=> "Clone Product",
                'content'=>'<span class="text-success">Clone Product success</span>',
                'footer'=> Html::button('Close',['class'=>'btn btn-default pull-left','data-dismiss'=>"modal"])

            ];
        }else{
            return $this->redirect(['site/error']);
        }
    }
    private function getCatTreeString($catproduct,$str){
        /** @var Catproduct $catproduct */
        if($catproduct->parent==-1){
            return $catproduct->name." > ".$str;
        }else{
            return $this->getCatTreeString(Catproduct::findOne(['id'=>$catproduct->parent]),$catproduct->name." > ".$str);
        }
    }
    public function actionExporttoexcel(){


        $objPHPExcel = new \PHPExcel();
        $objPHPExcel->getProperties()->setCreator("KarionTech")
            ->setLastModifiedBy("KarionTech")
            ->setTitle("Office 2007 XLSX")
            ->setSubject("Office 2007 XLSX")
            ->setDescription("generated by PHPExcel.")
            ->setKeywords("office 2007 openxml php")
            ->setCategory("Result file");
        $objPHPExcel->getActiveSheet()->setTitle("Merchant");
        $default = array(
            'font' => array(
                'bold' => false,
                'color' => array('rgb' => '000000'),
                'size' => 11,
                'name' => 'Times new Roman'
            ),
        );
        $header = array(
            'font' => array(
                'bold' => true,
                'color' => array('rgb' => '000000'),
                'size' => 11,
                'name' => 'Times new Roman'
            ),
        );

        $sheet = $objPHPExcel->setActiveSheetIndex(0);
        $sheet->getStyle('A1:M999')->applyFromArray($default);

        for ($i = "A"; $i <= "M"; $i++) {

            if($i!="fafasf"){
                $sheet->getColumnDimension($i)->setAutoSize(true);
            }

        }

        $sheet->getStyle('A1:M1')->applyFromArray($header);

        $sheet
            ->setCellValue('A1',"Id")
            ->setCellValue('B1',"Name")
//            ->setCellValue('C1',"Seo Description")
            ->setCellValue('C1',"Url")
//            ->setCellValue('E1',"Retail")
            ->setCellValue('D1',"Sale")
            ->setCellValue('E1',"Status")
            ->setCellValue('F1',"Product Default Image");
//            ->setCellValue('I1',"gtin")
//            ->setCellValue('J1',"mpn")
//            ->setCellValue('K1',"Category")
//            ->setCellValue('L1',"Category Tree")
//            ->setCellValue('M1',"Tags");
        $row=2;
        foreach (Product::find()->all() as $value){ /** @var Product $value */
            $tag = "";
            if(!is_null($value->tags) && !empty($value->tags)):
                                   foreach (explode(',',$value->tags) as $values):
                                        $tag.=$values.", ";
                                    endforeach;
                            endif;
            $sheet
                ->setCellValue('A'.$row,"")
                ->setCellValue('B'.$row,$value->name)
//                ->setCellValue('C'.$row,$value->seo_desc)
                ->setCellValue('C'.$row,"https://$_SERVER[HTTP_HOST]".Yii::$app->urlManagerFrontend->createUrl(['product/detailproduct', 'path' => $value->url, 'id' => $value->id]))
//                ->setCellValue('E'.$row,$value->retail)
                ->setCellValue('D'.$row,$value->sale)
                ->setCellValue('E'.$row,($value->status==0)?"Còn hàng":"Hết hàng")
                ->setCellValue('F'.$row,"https://$_SERVER[HTTP_HOST]".$value->getDefaultImage());
//                ->setCellValue('I'.$row,"")
//                ->setCellValue('J'.$row,"")
//                ->setCellValue('K'.$row,$value->catProduct->name)
//                ->setCellValue('L'.$row,rtrim($this->getCatTreeString($value->catProduct,"")," > "))
//                ->setCellValue('M'.$row,rtrim($tag,", "));
//            $sheet->getCell("D".$row)->getHyperlink()->setUrl("https://$_SERVER[HTTP_HOST]".Yii::$app->urlManagerFrontend->createUrl(['product/detailproduct', 'path' => $value->url, 'id' => $value->id]));
//            $sheet->getCell("H".$row)->getHyperlink()->setUrl("https://$_SERVER[HTTP_HOST]".$value->getDefaultImage());
            $row++;
        }
        $filename = "Merchant.xlsx";
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');


        header('Content-Disposition: attachment; filename="' . $filename . '"');
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Transfer-Encoding: binary');
        ob_end_clean(); // this
        ob_start();
        $objWriter->save("php://output"); // Change filename to force download
    }
    public function actionUpdatesession(){
        Yii::$app->session['productPaging']=$_POST['val'];
        return;
    }
}
