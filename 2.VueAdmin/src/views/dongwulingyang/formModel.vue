<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="24">
						<el-form-item label="动物名称" prop="dongwumingcheng">
							<el-input class="list_inp" v-model="form.dongwumingcheng" placeholder="动物名称"
								 type="text" 								:readonly="!isAdd||disabledForm.dongwumingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="动物图片" prop="dongwutupian">
							<uploads
								:disabled="!isAdd||disabledForm.dongwutupian?true:false"
								action="file/upload" 
								tip="请上传动物图片" 
								:limit="3" 
								style="width: 100%;text-align: left;"
								:fileUrls="form.dongwutupian?form.dongwutupian:''" 
								@change="dongwutupianUploadSuccess">
							</uploads>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="动物品种" prop="dongwupinzhong">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.dongwupinzhong?true:false"
								v-model="form.dongwupinzhong" 
								placeholder="请选择动物品种"
								>
								<el-option v-for="(item,index) in dongwupinzhongLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="动物性别" prop="dongwuxingbie">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.dongwuxingbie?true:false"
								v-model="form.dongwuxingbie" 
								placeholder="请选择动物性别"
								>
								<el-option v-for="(item,index) in dongwuxingbieLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="动物年龄" prop="dongwunianling">
							<el-input class="list_inp" v-model="form.dongwunianling" placeholder="动物年龄"
								 type="text" 								:readonly="!isAdd||disabledForm.dongwunianling?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="救助站名称" prop="jiuzhuzhanmingcheng">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.jiuzhuzhanmingcheng?true:false"
								v-model="form.jiuzhuzhanmingcheng" 
								placeholder="请选择救助站名称"
								@change="jiuzhuzhanmingchengChange">
								<el-option v-for="(item,index) in jiuzhuzhanmingchengLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="负责人" prop="fuzeren">
							<el-input class="list_inp" v-model="form.fuzeren" placeholder="负责人"
								 type="text" 								:readonly="!isAdd||disabledForm.fuzeren?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="联系方式" prop="lianxifangshi">
							<el-input class="list_inp" v-model="form.lianxifangshi" placeholder="联系方式"
								 type="text" 								:readonly="!isAdd||disabledForm.lianxifangshi?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="24">
						<el-form-item label="发布时间" prop="fabushijian">
							<el-date-picker
								class="list_date"
								v-model="form.fabushijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.fabushijian?true:false"
								placeholder="请选择发布时间" />
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="领养状态" prop="lingyangzhuangtai">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.lingyangzhuangtai?true:false"
								v-model="form.lingyangzhuangtai" 
								placeholder="请选择领养状态"
								>
								<el-option v-for="(item,index) in lingyangzhuangtaiLists" :label="item"
									:value="item"
									>
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="24">
						<el-form-item label="动物详情" prop="dongwuxiangqing">
							<el-input v-model="form.dongwuxiangqing" placeholder="动物详情" type="textarea"
							:readonly="!isAdd||disabledForm.dongwuxiangqing?true:false"
							/>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'dongwulingyang'
	const formName = '动物领养'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		dongwumingcheng : false,
		dongwutupian : false,
		dongwupinzhong : false,
		dongwuxingbie : false,
		dongwunianling : false,
		dongwuxiangqing : false,
		jiuzhuzhanmingcheng : false,
		fuzeren : false,
		lianxifangshi : false,
		fabushijian : false,
		lingyangzhuangtai : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		dongwumingcheng: [
		],
		dongwutupian: [
		],
		dongwupinzhong: [
		],
		dongwuxingbie: [
		],
		dongwunianling: [
		],
		dongwuxiangqing: [
		],
		jiuzhuzhanmingcheng: [
		],
		fuzeren: [
		],
		lianxifangshi: [
		],
		fabushijian: [
		],
		lingyangzhuangtai: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//动物图片上传回调
	const dongwutupianUploadSuccess=(e)=>{
		form.value.dongwutupian = e
	}
	//动物品种列表
	const dongwupinzhongLists = ref([])
	//动物性别列表
	const dongwuxingbieLists = ref([])
	//救助站名称列表
	const jiuzhuzhanmingchengLists = ref([])
	//领养状态列表
	const lingyangzhuangtaiLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			dongwumingcheng: '',
			dongwutupian: '',
			dongwupinzhong: '',
			dongwuxingbie: '',
			dongwunianling: '',
			dongwuxiangqing: '',
			jiuzhuzhanmingcheng: '',
			fuzeren: '',
			lianxifangshi: '',
			fabushijian: '',
			lingyangzhuangtai: '未领养',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.fabushijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='dongwumingcheng'){
					form.value.dongwumingcheng = row[x];
					disabledForm.value.dongwumingcheng = true;
					continue;
				}
				if(x=='dongwutupian'){
					form.value.dongwutupian = row[x];
					disabledForm.value.dongwutupian = true;
					continue;
				}
				if(x=='dongwupinzhong'){
					form.value.dongwupinzhong = row[x];
					disabledForm.value.dongwupinzhong = true;
					continue;
				}
				if(x=='dongwuxingbie'){
					form.value.dongwuxingbie = row[x];
					disabledForm.value.dongwuxingbie = true;
					continue;
				}
				if(x=='dongwunianling'){
					form.value.dongwunianling = row[x];
					disabledForm.value.dongwunianling = true;
					continue;
				}
				if(x=='dongwuxiangqing'){
					form.value.dongwuxiangqing = row[x];
					disabledForm.value.dongwuxiangqing = true;
					continue;
				}
				if(x=='jiuzhuzhanmingcheng'){
					form.value.jiuzhuzhanmingcheng = row[x];
					disabledForm.value.jiuzhuzhanmingcheng = true;
					continue;
				}
				if(x=='fuzeren'){
					form.value.fuzeren = row[x];
					disabledForm.value.fuzeren = true;
					continue;
				}
				if(x=='lianxifangshi'){
					form.value.lianxifangshi = row[x];
					disabledForm.value.lianxifangshi = true;
					continue;
				}
				if(x=='fabushijian'){
					form.value.fabushijian = row[x];
					disabledForm.value.fabushijian = true;
					continue;
				}
				if(x=='lingyangzhuangtai'){
					form.value.lingyangzhuangtai = row[x];
					disabledForm.value.lingyangzhuangtai = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			form.value.lingyangzhuangtai='未领养'
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
		})
		context?.$http({
			url: `option/dongwupinzhong/dongwupinzhong`,
			method: 'get'
		}).then(res=>{
			dongwupinzhongLists.value = res.data.data
		})
		dongwuxingbieLists.value = "公,母".split(',')
		context?.$http({
			url: `option/jiuzhuzhan/jiuzhuzhanmingcheng`,
			method: 'get'
		}).then(res=>{
			jiuzhuzhanmingchengLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.fuzeren = true;
		//由上级字段带出不可改
		disabledForm.value.lianxifangshi = true;
		lingyangzhuangtaiLists.value = "已领养,未领养".split(',')
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	const jiuzhuzhanmingchengChange=()=>{
		context?.$http({
			url: `follow/jiuzhuzhan/jiuzhuzhanmingcheng?columnValue=` + form.value.jiuzhuzhanmingcheng,
			method: 'get'
		}).then(res=>{
			if(res.data.data.fuzeren){
				form.value.fuzeren = res.data.data.fuzeren
			}
			if(res.data.data.lianxifangshi){
				form.value.lianxifangshi = res.data.data.lianxifangshi
			}
		})
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		if(form.value.dongwutupian!=null) {
			form.value.dongwutupian = form.value.dongwutupian.replace(new RegExp(context?.$config.url,"g"),"");
		}
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border-radius: 6px;
		padding: 30px;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 0 20px 0;
			display: flex;
			justify-content: space-between;
			//label
			.el-form-item__label {
			 background: transparent;
			 display: block;
			 width: 90px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 160px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid #ddd;
					padding: 0 10px;
					width: 300px;
					line-height: 36px;
					box-sizing: border-box;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid #ddd;
					border-radius: 0;
					width: 400px;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid #ddd;
					border-radius: 0;
					padding: 0 10px;
					width: 400px;
					line-height: 36px;
					box-sizing: border-box;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
				// 长文本
				.el-textarea__inner {
					border: 1px solid #ddd;
					border-radius: 0;
					padding: 12px;
					outline: none;
					color: #333;
					width: 400px;
					font-size: 14px;
					min-height: 120px;
				}
				//图片上传样式
				.el-upload-list  {
					//提示语
					.el-upload__tip {
						margin: 7px 0 0;
						color: #999;
						display: flex;
						font-size: 12px;
						justify-content: flex-start;
						align-items: center;
					}
					//外部盒子
					.el-upload--picture-card {
						border: 1px dashed rgba(75,137,243,1);
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
						//图标
						.el-icon{
							color: rgba(75,137,243,1);
							font-size: 32px;
						}
					}
					.el-upload-list__item {
						border: 1px dashed rgba(75,137,243,1);
						cursor: pointer;
						background-color: #fff;
						border-radius: 8px;
						width: 100px;
						line-height: 110px;
						text-align: center;
						height: 100px;
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0 0 10px 0 rgba(0, 0, 0, 0.30);
			margin: 0 10px 0 0;
			outline: none;
			color: #333;
			background: linear-gradient(0deg, rgba(255,255,255,1) 0%, rgba(227,225,224,1) 100%, rgba(255,255,255,1) 100%);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_cancel:hover {
			background: linear-gradient(180deg, rgba(255,255,255,1) 0%, rgba(227,225,224,1) 100%, rgba(255,255,255,1) 100%);
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 24px;
			box-shadow: inset 0 4px 10px 0 rgba(0,0,0,.3);
			margin: 0 10px 0 0;
			outline: none;
			color: #fff;
			background: linear-gradient(0deg, rgba(67,125,205,1) 0%, rgba(30,103,183,1) 100%, rgba(227,225,224,1) 100%);
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		.formModel_confirm:hover {
			background: linear-gradient(180deg, rgba(67,125,205,1) 0%, rgba(30,103,183,1) 100%, rgba(227,225,224,1) 100%);
		}
	}
</style>