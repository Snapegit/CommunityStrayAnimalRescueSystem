import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import jiuzhuzhanList from '@/views/pages/jiuzhuzhan/list'
import jiuzhuzhanDetail from '@/views/pages/jiuzhuzhan/formModel'
import jiuzhuzhanAdd from '@/views/pages/jiuzhuzhan/formAdd'
import dongwupinzhongList from '@/views/pages/dongwupinzhong/list'
import dongwupinzhongDetail from '@/views/pages/dongwupinzhong/formModel'
import dongwupinzhongAdd from '@/views/pages/dongwupinzhong/formAdd'
import jiuzhuliulangdongwuList from '@/views/pages/jiuzhuliulangdongwu/list'
import jiuzhuliulangdongwuDetail from '@/views/pages/jiuzhuliulangdongwu/formModel'
import jiuzhuliulangdongwuAdd from '@/views/pages/jiuzhuliulangdongwu/formAdd'
import dongwulingyangList from '@/views/pages/dongwulingyang/list'
import dongwulingyangDetail from '@/views/pages/dongwulingyang/formModel'
import dongwulingyangAdd from '@/views/pages/dongwulingyang/formAdd'
import lingyangxinxiList from '@/views/pages/lingyangxinxi/list'
import lingyangxinxiDetail from '@/views/pages/lingyangxinxi/formModel'
import lingyangxinxiAdd from '@/views/pages/lingyangxinxi/formAdd'
import xunzhaoliulangdongwuList from '@/views/pages/xunzhaoliulangdongwu/list'
import xunzhaoliulangdongwuDetail from '@/views/pages/xunzhaoliulangdongwu/formModel'
import xunzhaoliulangdongwuAdd from '@/views/pages/xunzhaoliulangdongwu/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'jiuzhuzhanList',
			component: jiuzhuzhanList
		}, {
			path: 'jiuzhuzhanDetail',
			component: jiuzhuzhanDetail
		}, {
			path: 'jiuzhuzhanAdd',
			component: jiuzhuzhanAdd
		}
		, {
			path: 'dongwupinzhongList',
			component: dongwupinzhongList
		}, {
			path: 'dongwupinzhongDetail',
			component: dongwupinzhongDetail
		}, {
			path: 'dongwupinzhongAdd',
			component: dongwupinzhongAdd
		}
		, {
			path: 'jiuzhuliulangdongwuList',
			component: jiuzhuliulangdongwuList
		}, {
			path: 'jiuzhuliulangdongwuDetail',
			component: jiuzhuliulangdongwuDetail
		}, {
			path: 'jiuzhuliulangdongwuAdd',
			component: jiuzhuliulangdongwuAdd
		}
		, {
			path: 'dongwulingyangList',
			component: dongwulingyangList
		}, {
			path: 'dongwulingyangDetail',
			component: dongwulingyangDetail
		}, {
			path: 'dongwulingyangAdd',
			component: dongwulingyangAdd
		}
		, {
			path: 'lingyangxinxiList',
			component: lingyangxinxiList
		}, {
			path: 'lingyangxinxiDetail',
			component: lingyangxinxiDetail
		}, {
			path: 'lingyangxinxiAdd',
			component: lingyangxinxiAdd
		}
		, {
			path: 'xunzhaoliulangdongwuList',
			component: xunzhaoliulangdongwuList
		}, {
			path: 'xunzhaoliulangdongwuDetail',
			component: xunzhaoliulangdongwuDetail
		}, {
			path: 'xunzhaoliulangdongwuAdd',
			component: xunzhaoliulangdongwuAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
