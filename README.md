# Arff
An Arff generator written in Pharo.

Arff is a format defined by [Weka](http://www.cs.waikato.ac.nz/ml/weka/) to be used for data importation.
This project implements a representation of weka's arff concepts as objects in Pharo  and is able to generate valid arff strings.

See [Arff file spec](https://weka.wikispaces.com/ARFF) to learn more about this format.

## Install
~~~
Metacello new
    baseline: 'Arff';
    repository: 'github://juliendelplanque/Arff/repository';
    load
~~~

## Use this project as a dependency
Simply add this code snippet to your baseline:
~~~
spec baseline: 'Arff' with: [
    spec repository: 'github://juliendelplanque/Arff/repository' ].
~~~

## Example
The following code:
~~~
doc := ArffDocument new.
doc
    relation: 'temperature';
    addDateAttribute: 'time' format: 'yyyy-MM-dd HH:mm:ss';
    addNumericAttribute: 'temperature';
    addNominalAttribute: 'weather' specification: #('sunny' 'cloudy').

doc
    addInstance: #('2015-01-01 12:00:00' 5  'sunny');
    addInstance: #('2015-02-01 18:40:00' 8  'sunny');
    addInstance: #('2015-03-01 05:04:00' 3  'cloudy');
    addInstance: #('2015-04-01 13:01:20' 15 'cloudy');
    addInstance: #('2015-05-01 09:07:00' 12  'sunny');
    addInstance: #('2015-06-01 12:20:00' 6  'cloudy').

doc asString
~~~

Generates the arff string:
~~~
@relation temperature
@attribute time date "yyyy-MM-dd HH:mm:ss"
@attribute temperature numeric
@attribute weather {sunny,cloudy}
@data
"2015-01-01 12:00:00",5,"sunny"
"2015-02-01 18:40:00",8,"sunny"
"2015-03-01 05:04:00",3,"cloudy"
"2015-04-01 13:01:20",15,"cloudy"
"2015-05-01 09:07:00",12,"sunny"
"2015-06-01 12:20:00",6,"cloudy"
~~~

## TODO
- Add messages in ArffDocument to make the DSL simpler.
- Manage real Date object in ArffDateAttribute (for now string are used).
- Add an object to represent '?' (missing data) for now, the character $? is used.
- Add possibility to add comment in an ArffDocument.

Pull requests are welcome. :)
