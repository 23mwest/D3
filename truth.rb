require 'sinatra'
require 'sinatra/reloader'

def defaulTrueValue
  'T'
end

def defaultFalseValue
  'F'
end

def defaultSize
  3
end







get '/' do
  erb :index
end

get '/truth' do
  tv = params['trueValue']
  fv = params['falseValue']
  sz = params['size']
  test = params['test']

  if tv.nil?
  	tv = defaulTrueValue
  end

  if fv.nil?
  	fv = defaultFalseValue
  end

  if sz.nil?
  	sz = defaultSize
  end

  if test.nil?
  	

  erb :truth, :locals => { trueValue: trueValue, falseValue: falseValue, size: size }
end


not_found do
  status 404
  erb :error
end

