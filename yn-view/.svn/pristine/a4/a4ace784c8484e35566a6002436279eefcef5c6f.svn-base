
//生产一个全局的pie option
function InitPieOption(){
	option = {
		    title : {
		        text: '',
		        subtext: '',
		        x:'center'
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)"
		    },
		    legend: {
		        orient: 'vertical',
		        left: 'left',
		        padding: 20,
		        data: []
		    },
		    series : [
		        {
		            name: '',
		            type: '',
		            radius : '55%',
		            center: ['50%', '60%'],
		            data:[],
		            itemStyle: {
		                emphasis: {
		                    shadowBlur: 10,
		                    shadowOffsetX: 0,
		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
		                }
		            },
		            label: {
		                normal: {
		                	show: true,
		                    position: 'inner',
		                    formatter: '{c}/{d}%'
		                }
		            },
		        }
		    ]
		};
	
	return option;
}

//生产一个全局的line option
function InitLineOption(){
	option = {
		    title : {
		        text: '',
		        subtext: '',
		        x:'center'
		    },
		    tooltip : {
		    	trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            label: {
		                backgroundColor: '#6a7985'
		            }
		        }
		    },
		    legend: {
// 		        orient: 'vertical',
		        left: 'right',
		     	padding: 20,
		        data: [],
		    },
		    grid:
			{
				x: 90,   //x左
				y: 70,   //y上
				x2: 15,  //x右
				y2: 40  //y下
			},
		    yAxis:{
			},
			xAxis:{
				data: [],
				axisLabel:{
					 rotate: 60,  //x轴文字倾斜角度 
					 interval:0 
				 },
			},
		    series : [
		        {
		            name: '',
		            data:[],
		            label: {
		                normal: {
		                    show: true,
		                    position: 'top'
		                }
		            }
		        }
		    ]
		};
	
	return option;
}