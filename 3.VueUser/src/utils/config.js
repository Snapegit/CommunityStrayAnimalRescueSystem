const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '救助站',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'救助站',
							url:'/index/jiuzhuzhanList'
						},
					]
				},
				{
					name: '救助流浪动物',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'救助流浪动物',
							url:'/index/jiuzhuliulangdongwuList'
						},
					]
				},
				{
					name: '寻找流动动物',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'寻找流浪动物',
							url:'/index/xunzhaoliulangdongwuList'
						},
					]
				},
				{
					name: '动物领养',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'动物领养',
							url:'/index/dongwulingyangList'
						},
					]
				},
				{
					name: '通知公告',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'通知公告',
							url:'/index/newsList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "基于SpringBoot的社区流浪动物救助系统"
        } 
    }
}
export default config
