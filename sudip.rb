#!/usr/bin/env ruby
require 'optparse'
require 'socket'
require 'rbconfig'
require "benchmark"
include Socket::Constants
$file = File.new("log.txt","a+")
class String
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end
  def bg_black;       "\e[40m#{self}\e[0m" end
  def bg_red;         "\e[41m#{self}\e[0m" end
  def bg_green;       "\e[42m#{self}\e[0m" end
  def bg_brown;       "\e[43m#{self}\e[0m" end
  def bg_blue;        "\e[44m#{self}\e[0m" end
  def bg_magenta;     "\e[45m#{self}\e[0m" end
  def bg_cyan;        "\e[46m#{self}\e[0m" end
  def bg_gray;        "\e[47m#{self}\e[0m" end
  def colors
    $color = [red,green,brown,blue,magenta,cyan,gray]
    $color[rand($color.length)]
  end
end
$n1 = []
$n2 = []
for n1 in (1..21) do
  $n1.push(n1)
end
for n2 in (8888..64738) do
  $n2.push(n2)
end
if ARGV.length == 0 then
  puts """                         d#{"b".colors}#{"b".colors}
  #{"U".colors}#{"S".colors}#{"I".colors}#{"N".colors}#{"G".colors} #{":".colors} #{".".colors}#{"/".colors}#{"S".colors}#{"u".colors}#{"d".colors}#{"I".colors}#{"P".colors} #{"-".colors}#{"-".colors}#{"i".colors}#{"p".colors} #{"0".colors}#{".".colors}#{"0".colors}#{".".colors}#{"0".colors}#{".".colors}#{"0".colors} #{"-".colors}#{"-".colors}#{"p".colors}#{"o".colors}#{"r".colors}#{"t".colors}#{"s".colors} #{$n1[rand($n1.length)].to_s.colors}#{"-".colors}#{$n2[rand($n2.length)].to_s.colors}
                       d#{"b".colors}#{"b".colors}
 .d#{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}, ?#{"b".colors}#{"b".colors}   d#{"b".colors}P  d#{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}        #{"b".colors}#{"b".colors}#{"b".colors} ?#{"b".colors}#{"b".colors},.d#{"b".colors}#{"b".colors}#{"b".colors},
 ?#{"b".colors}#{"b".colors},    d#{"b".colors}#{"b".colors}   #{"b".colors}#{"b".colors}  d#{"b".colors}P' ?#{"b".colors}#{"b".colors}        #{"b".colors}#{"b".colors}P `?#{"b".colors}#{"b".colors}'  ?#{"b".colors}#{"b".colors}
   `?#{"b".colors}#{"b".colors}  ?#{"b".colors}(  d#{"b".colors}#{"b".colors}  #{"b".colors}#{"b".colors}#{"b".colors}  ,#{"b".colors}#{"b".colors}#{"b".colors}      d#{"b".colors}#{"b".colors}    #{"b".colors}#{"b".colors}#{"b".colors}  d#{"b".colors}P
`?#{"b".colors}#{"b".colors}#{"b".colors}P'  `?#{"b".colors}#{"b".colors}P'?#{"b".colors}#{"b".colors} `?#{"b".colors}#{"b".colors}P'`#{"b".colors}#{"b".colors}#{"b".colors}    d#{"b".colors}#{"b".colors}'    #{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}#{"b".colors}P'
                                        #{"b".colors}#{"b".colors}P'
                                       d#{"b".colors}#{"b".colors}
                                      ?#{"b".colors}P"""
  exit(0)
end
module OS
  def self.name
    case RbConfig::CONFIG['host_os']

    when /linux/
      'Linux'
    when /darwin/
      'OS X'
    when /mswin|mingw32|windows/
      'Windows'
    when /solaris/
      'Solaris'
    when /bsd/
      'BSD'
    else
      RbConfig::CONFIG['host_os']
    end
  end
end
$version = "#{"S".colors}#{"u".colors}#{"d".colors}#{"I".colors}#{"P".colors} #{"v".colors}#{"1".colors}#{".".colors}#{"0".colors}#{".".colors}#{"3".colors} #{"(".colors}#{"2".colors}#{"0".colors}#{"2".colors}#{"2".colors}#{"-".colors}#{"0".colors}#{"5".colors}#{"-".colors}#{"0".colors}#{"3".colors}#{")".colors} #{"[".colors}#{OS.name.colors}#{"]".colors}"
$options = {}
begin
OptionParser.new do |opt|
  opt.on_tail("--help","-h") do
    puts opt.banner = "#{"U".colors}#{"S".colors}#{"I".colors}#{"N".colors}#{"G".colors} #{":".colors} #{".".colors}#{"/".colors}#{"S".colors}#{"u".colors}#{"d".colors}#{"I".colors}#{"P".colors} #{"-".colors}#{"-".colors}#{"i".colors}#{"p".colors} #{"0".colors}#{".".colors}#{"0".colors}#{".".colors}#{"0".colors}#{".".colors}#{"0".colors} #{"-".colors}#{"-".colors}#{"p".colors}#{"o".colors}#{"r".colors}#{"t".colors}#{"s".colors} #{$n1[rand($n1.length)].to_s.colors}#{"-".colors}#{$n2[rand($n2.length)].to_s.colors}"
    puts "#{"-".colors}#{"i".colors}#{",".colors}#{"-".colors}#{"-".colors}#{"i".colors}#{"p".colors} #{":".colors}#{">".colors} #{"I".colors}#{"P".colors} #{"A".colors}#{"D".colors}#{"D".colors}#{"R".colors}#{"E".colors}#{"S".colors}#{"S".colors} "
    puts "#{"-".colors}#{"p".colors}#{",".colors}#{"-".colors}#{"-".colors}#{"p".colors}#{"o".colors}#{"r".colors}#{"t".colors}#{"s".colors} #{":".colors}#{">".colors} #{"P".colors}#{"O".colors}#{"R".colors}#{"T".colors}#{"S".colors}"
    puts "#{"-".colors}#{"a".colors},#{"-".colors}#{"-".colors}#{"a".colors}#{"b".colors}#{"o".colors}#{"u".colors}#{"t".colors} #{":".colors}#{">".colors} #{"A".colors}#{"B".colors}#{"O".colors}#{"U".colors}#{"T".colors} #{"M".colors}#{"E".colors}"
    exit(0)
  end

  opt.on_tail("-a","--about") do
    puts "FACEBOOK :> facebook.com/profile.php?id=100081021606459\nYOUTUBE  :> youtube.com/channel/UCW5PhLXqVKx6HCbAxCCYTTQ\nGITHUB   :> github.com/morxd"
    exit(0)
  end
  opt.on_tail("--version","-v") do
    puts "#{$version}"
    exit(0)
  end
  opt.on("--ip YOUR ADDRESS","-i"){|i| $options[:ip] = i}
  opt.on("--ports YOUR PORTS","-p"){|p| $options[:ports] = p}
end.parse!
if $options[:ports] == nil then
  puts "#{"P".colors}#{"O".colors}#{"R".colors}#{"T".colors} #{"I".colors}#{"n".colors}#{"p".colors}#{"u".colors}#{"t".colors} #{"E".colors}#{"m".colors}#{"p".colors}#{"t".colors}#{"y".colors}"
  exit(0)
end
if $options[:ip] == nil then
  puts "#{"I".colors}#{"P".colors} #{"I".colors}#{"n".colors}#{"p".colors}#{"u".colors}#{"t".colors} #{"E".colors}#{"m".colors}#{"p".colors}#{"t".colors}#{"y".colors}"
  exit(0)
end
rescue OptionParser::MissingArgument
  exit(0)
rescue OptionParser::InvalidOption
  puts "#{"U".colors}#{"S".colors}#{"I".colors}#{"N".colors}#{"G".colors} #{":".colors} #{".".colors}#{"/".colors}#{"S".colors}#{"u".colors}#{"d".colors}#{"I".colors}#{"P".colors} #{"-".colors}#{"-".colors}#{"i".colors}#{"p".colors} #{"0".colors}#{".".colors}#{"0".colors}#{".".colors}#{"0".colors}#{".".colors}#{"0".colors} #{"-".colors}#{"-".colors}#{"p".colors}#{"o".colors}#{"r".colors}#{"t".colors}#{"s".colors} #{$n1[rand($n1.length)].to_s.colors}#{"-".colors}#{$n2[rand($n2.length)].to_s.colors}"
  puts "#{"-".colors}#{"i".colors}#{",".colors}#{"-".colors}#{"-".colors}#{"i".colors}#{"p".colors} #{":".colors}#{">".colors} #{"I".colors}#{"P".colors} #{"A".colors}#{"D".colors}#{"D".colors}#{"R".colors}#{"E".colors}#{"S".colors}#{"S".colors} "
  puts "#{"-".colors}#{"p".colors}#{",".colors}#{"-".colors}#{"-".colors}#{"p".colors}#{"o".colors}#{"r".colors}#{"t".colors}#{"s".colors} #{":".colors}#{">".colors} #{"P".colors}#{"O".colors}#{"R".colors}#{"T".colors}#{"S".colors}"
  puts "#{"-".colors}#{"a".colors},#{"-".colors}#{"-".colors}#{"a".colors}#{"b".colors}#{"o".colors}#{"u".colors}#{"t".colors} #{":".colors}#{">".colors} #{"A".colors}#{"B".colors}#{"O".colors}#{"U".colors}#{"T".colors} #{"M".colors}#{"E".colors}"
  exit(0)
  end

def is_number?(obj)
  obj.to_s == obj.to_i.to_s
end
if $options[:ip].count(".").to_i != 3 then
  puts "#{"I".colors}#{"P".colors} #{"I".colors}#{"n".colors}#{"p".colors}#{"u".colors}#{"t".colors} #{"E".colors}#{"r".colors}#{"r".colors}#{"o".colors}#{"r".colors} #{$options[:ip].red}"
  exit(0)
end
if $options[:ports].count("-").to_i != 1 then
  puts "#{"P".colors}#{"O".colors}#{"R".colors}#{"T".colors}#{"S".colors} #{"I".colors}#{"n".colors}#{"p".colors}#{"u".colors}#{"t".colors} #{"E".colors}#{"r".colors}#{"r".colors}#{"o".colors}#{"r".colors} #{$options[:ports].red}"
  exit(0)
end
if is_number?("#{$options[:ip].split(".")[0].chomp.strip}") and is_number?("#{$options[:ip].split(".")[1].chomp.strip}") and is_number?("#{$options[:ip].split(".")[2].chomp.strip}") and is_number?("#{$options[:ip].split(".")[3].chomp.strip}") == true then
else
  puts "#{"I".colors}#{"P".colors} #{"c".colors}#{"o".colors}#{"n".colors}#{"s".colors}#{"i".colors}#{"s".colors}#{"t".colors}#{"s".colors} #{"o".colors}#{"f".colors} #{"i".colors}#{"n".colors}#{"t".colors}#{"e".colors}#{"g".colors}#{"e".colors}#{"r".colors}#{"s".colors} #{":".colors}#{">".colors} #{$options[:ip].red}"
  exit(0)
end
if is_number?("#{$options[:ports].split("-")[0]}") and is_number?("#{$options[:ports].split("-")[1]}") == true then
else
  puts "#{"P".colors}#{"O".colors}#{"R".colors}#{"T".colors}#{"S".colors} #{"c".colors}#{"o".colors}#{"n".colors}#{"s".colors}#{"i".colors}#{"s".colors}#{"t".colors}#{"s".colors} #{"o".colors}#{"f".colors} #{"i".colors}#{"n".colors}#{"t".colors}#{"e".colors}#{"g".colors}#{"e".colors}#{"r".colors}#{"s".colors} #{":".colors}#{">".colors} #{$options[:ports].red}"
  exit(0)
end

if $options[:ip].split(".")[0].to_i > 255 or $options[:ip].split(".")[1].to_i > 255 or $options[:ip].split(".")[2].to_i > 255 or $options[:ip].split(".")[3].to_i > 255 then
  puts "#{"W".colors}#{"r".colors}#{"o".colors}#{"n".colors}#{"g".colors} #{"I".colors}#{"P".colors} #{":".colors}#{">".colors} #{$options[:ip].red}"
  exit(0)
end

TIMEOUT = 2
$PORTS = []
for xport in ("#{$options[:ports].chomp.strip.split("-")[0]}".to_i.."#{$options[:ports].chomp.strip.split("-")[1]}".to_i) do
  $PORTS.push(xport)
end
thread = []
begin
  $timer = "#{(Benchmark.measure { $PORTS.each { |set| thread << Thread.new {
    socket = Socket.new(AF_INET,SOCK_STREAM,0)
    addr = Socket.sockaddr_in(set,$options[:ip])
    begin
      socket.connect_nonblock(addr)
    rescue Errno::EINPROGRESS, Errno::EADDRNOTAVAIL,Errno::EMFILE
    end
    _,check,_ = IO.select(nil,[socket],nil,TIMEOUT)
    if check
      $file.write("#{$options[:ip].to_s.chomp.strip}:#{set.to_s.chomp}\n")
      begin
        puts "#{$options[:ip].to_s.cyan}#{":".colors}#{">".colors} #{set.to_s.green} #{"O".colors}#{"P".colors}#{"E".colors}#{"N".colors}"

      end

    end
  } } })}".split("( ")[1].gsub(")","").chomp.strip
    puts "#{"F".colors}#{"I".colors}#{"N".colors}#{"I".colors}#{"S".colors}#{"H".colors} #{":".colors}#{">".colors} #{$timer}#{"/".colors}#{"s".colors}"
rescue Exception
  exit(0)
end
