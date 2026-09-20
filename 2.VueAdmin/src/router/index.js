	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import jiuzhuzhan from '@/views/jiuzhuzhan/list'
	import dongwupinzhong from '@/views/dongwupinzhong/list'
	import xunzhaoliulangdongwu from '@/views/xunzhaoliulangdongwu/list'
	import jiuzhuliulangdongwu from '@/views/jiuzhuliulangdongwu/list'
	import dongwulingyang from '@/views/dongwulingyang/list'
	import yonghu from '@/views/yonghu/list'
	import discussjiuzhuliulangdongwu from '@/views/discussjiuzhuliulangdongwu/list'
	import lingyangxinxi from '@/views/lingyangxinxi/list'
	import discussxunzhaoliulangdongwu from '@/views/discussxunzhaoliulangdongwu/list'
	import config from '@/views/config/list'
	import users from '@/views/users/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/news',
			name: '通知公告',
			component: news
		}
		,{
			path: '/jiuzhuzhan',
			name: '救助站',
			component: jiuzhuzhan
		}
		,{
			path: '/dongwupinzhong',
			name: '动物品种',
			component: dongwupinzhong
		}
		,{
			path: '/xunzhaoliulangdongwu',
			name: '寻找流浪动物',
			component: xunzhaoliulangdongwu
		}
		,{
			path: '/jiuzhuliulangdongwu',
			name: '救助流浪动物',
			component: jiuzhuliulangdongwu
		}
		,{
			path: '/dongwulingyang',
			name: '动物领养',
			component: dongwulingyang
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/discussjiuzhuliulangdongwu',
			name: '救助流浪动物评论',
			component: discussjiuzhuliulangdongwu
		}
		,{
			path: '/lingyangxinxi',
			name: '领养信息',
			component: lingyangxinxi
		}
		,{
			path: '/discussxunzhaoliulangdongwu',
			name: '寻找流浪动物评论',
			component: discussxunzhaoliulangdongwu
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
