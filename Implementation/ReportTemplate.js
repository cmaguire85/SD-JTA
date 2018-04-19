const createCsvWriter = require('csv-writer').createObjectCsvWriter;
const csvWriter = createCsvWriter({
    path: 'C:Users/Administrator/Desktop/SummaryReport/DefaultHeaderTemplate.csv',
    header: [
        {id: 'TaskStatement1', title: 'Task Statement'},
        {id: 'TaskStatement2', title: ''},
        {id: 'DIF1', title: 'DIF'},
        {id: 'DIF2', title: ''},
        {id: 'DIF3', title: ''},
        {id: 'DIF4', title: ''},
        {id: 'Proficiency1', title: 'Proficiency'},
        {id: 'Proficiency2', title: ''},
        {id: 'PriorityRating1', title: 'Priority Rating'},
        {id: 'PriorityRating2', title: ''},
        {id: 'Delivery1', title: 'Delivery'},
        {id: 'Delivery2', title: ''},
        {id: 'KSAs1', title: 'KSAs'},
        {id: 'KSAs2', title: ''},
    ]
});
 
const records = [
    {TaskStatement1: 'ID',  TaskStatement2: 'Task Description', DIF1: 'Learn', DIF2: 'Perform', DIF3: 'Importance', DIF4: 'Frequency', Proficiency1: 'Performance', Proficiency2:'Knowledge', PriorityRating1:'Initial', PriorityRating2:'Refresher', Delivery1: 'Recommended Format', Delivery2: 'Recommended Method', KSAs1: 'Knowledge', KSAs2:'Skills'}
];
 
csvWriter.writeRecords(records)       // returns a promise
    .then(() => {
        console.log('...Done');
    });