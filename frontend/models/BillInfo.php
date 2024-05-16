<?php

namespace frontend\models;

use common\models\User;
use Yii;
use yii\base\Model;

/**
 * Login form
 */
class BillInfo extends Model
{
    public $gender;
    public $name;
    public $sdt;
    public $yeucaukhac;
    public $type;
    public $address;
    public $tinhthanh;
    public $quanhuyen;
    public $phuongxa;
    public $nguoinhanhang;
    public $nguoinhanhangsdt;
    public $chuyendanhba;
    public $mangdtkhac;
    public $xuathoadontencty;
    public $xuathoadondiachi;
    public $xuathoadonmst;
    public $isNguoikhacnhan;
    public $isMangthemdienthoai;
    public $isXuathoadon;
    public $typethanhtoan;
    public $email;
    private $_user;
    const GENDER_MALE = "Anh";
    const GENDER_FEMALE = "Chị";
    const TYPE_1 = "Giao hàng tận nơi ở";
    const TYPE_2 = "Nhận máy tại cửa hàng";
    const TYPETT_1 = "Giao hàng thu tiền tận nhà";
    const TYPETT_2 = "Chuyển khoản";


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['name', 'sdt','email'], 'required'],
            [['name','nguoinhanhang'], 'string', 'max' => 500],
            [['email'], 'email'],
            [['sdt','nguoinhanhangsdt'], 'string', 'max' => 15],
            [['gender','typethanhtoan','yeucaukhac','type','address','tinhthanh','quanhuyen','phuongxa','mangdtkhac','xuathoadontencty','xuathoadondiachi','xuathoadonmst'], 'string'],
            [['chuyendanhba','isNguoikhacnhan','isMangthemdienthoai','isXuathoadon'], 'boolean'],
            //['password', 'validatePassword'],
        ];
    }
    public function attributeLabels()
    {
        return [
            'gender'=>"Mời quý khách chọn danh xưng",
            'name'=>"Họ và tên",
            'sdt'=>"Số điện thoại",
            'yeucaukhac'=>"Yêu cầu khác (không bắt buộc)",
            'type'=>"Phương thức nhận hàng",
            'address'=>"Địa chỉ",
            'nguoinhanhang'=>"Tên người nhận hàng",
            'nguoinhanhangsdt'=>"Số điện thoại người nhận hàng",
            'chuyendanhba'=>"Chuyển danh bạ, dữ liệu qua máy mới",
            'mangdtkhac'=>"Bạn muốn xem thêm điện thoại nào?",
            'xuathoadontencty'=>"Tên công ty",
            'xuathoadondiachi'=>"Địa chỉ DKKD",
            'xuathoadonmst'=>"Mã số thuế",
            'tinhthanh'=>"Tỉnh thành",
            'quanhuyen'=>"Quận huyện",
            'phuongxa'=>"Phường xã",
            'isNguoikhacnhan'=>'Người khác nhận thay',
            'isMangthemdienthoai'=>'Mang thêm điện thoại khác để bạn xem',
            'isXuathoadon'=>'Xuất hóa đơn GTGT',
            'typethanhtoan'=>'Phương thức thanh toán',
            'email'=>'Email'
        ];
    }
    /**
     * Validates the password.
     * This method serves as the inline validation for password.
     *
     * @param string $attribute the attribute currently being validated
     * @param array $params the additional name-value pairs given in the rule
     */
    public static function get($t){
        if($t=='gender'){
            return [
                self::GENDER_MALE => "Anh",
                self::GENDER_FEMALE => "Chị",
            ];
        }else if($t=='tt'){
            return[
                self::TYPETT_1 => "Giao hàng thu tiền tận nhà",
                self::TYPETT_2 => "Chuyển khoản",
            ];
        }
        else{
            return [
                self::TYPE_1 => "Giao hàng tận nơi",
                self::TYPE_2 => "Nhận sản phẩm tại cửa hàng"
            ];
        }
    }
    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {

            $user = $this->getUser();
            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Incorrect username or password.');
            }
        }
    }



}
