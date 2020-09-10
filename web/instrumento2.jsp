<!DOCTYPE HTML>
<html>
    <head>
        <title>Orchidea</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">
    </head>
    <script>
        function loadme(){

load_float13();

return;
}
var context = new (window.AudioContext || window.webkitAudioContext)();

// ----------------- Mouse click ----------------------------
// Variable to keep output ports
var x_click_ports = [];
var y_click_ports = [];
var button_click_ports = [];

document.onmousedown = getMouseClick;
function getMouseClick(event) {
    // X value
    for (var i = 0; i < x_click_ports.length ; i++)
        for (var j = 0; j < x_click_ports[i].length ; j++)
                x_click_ports[i][j](event.x);

    // Y value
    for (var i = 0; i < y_click_ports.length ; i++)
        for (var j = 0; j < y_click_ports[i].length ; j++)
                y_click_ports[i][j](event.y);

    // Button value
    for (var i = 0; i < button_click_ports.length ; i++)
        for (var j = 0; j < button_click_ports[i].length ; j++)
                button_click_ports[i][j](event.button);

  return true
}
// ----------------- Mouse position ----------------------------


Merger = function(context) {
  var that = this;
  this.x = 0; // Initial sample number
  this.context = context;
  this.node = context.createScriptProcessor(1024, 1, 1);
  this.node.onaudioprocess = function(e) { that.process(e) };
}

Merger.prototype.process = function(e) {
  var in0 = e.inputBuffer.getChannelData(0);
  var out = e.outputBuffer.getChannelData(0);
  for (var i = 0; i < in0.length; ++i) {
      out[i] = in0[i];
  }
}

Envelope = function(context, a, d, s, r, g) {
this.node = context.createGain()
this.context = context;
this.node.gain.value = 0;
this.a = a / 1000.0;
this.d = d / 1000.0;
this.s = s / 1000.0;
this.r = r / 1000.0;
this.g = g;
}

Envelope.prototype.play = function(e) {
var time = this.context.currentTime;
// Zero
this.node.gain.linearRampToValueAtTime(0, time);
// Attack time
time += this.a;
this.node.gain.linearRampToValueAtTime(1, time);
// Decay time
time += this.d;
this.node.gain.linearRampToValueAtTime(0.5, time);
// Sustain time (do nothing)
time += this.s;
// Release time
time += this.r;
this.node.gain.linearRampToValueAtTime(0, time);
}

Envelope.prototype.seta = function(a) {
    this.a = parseFloat(a)/1000.0;
}

Envelope.prototype.setd = function(d) {
    this.d = parseFloat(d)/1000.0;
}

Envelope.prototype.sets = function(s) {
    this.s = parseFloat(s)/1000.0;
}

Envelope.prototype.setr = function(r) {
    this.r = parseFloat(r)/1000.0;
}

Envelope.prototype.setg = function(g) {
    this.g = parseFloat(g);
}

//declaration block

// block_8 = Range
var range_8_value = [];

var range_8_invalue = function(value){
    document.getElementById("block_8").value = value;
    change_value8(value);
    return true;
    };


// block_11 = Mouse
var mouse_click_11_x = [];
var mouse_click_11_y = [];
var mouse_click_11_button = [];
x_click_ports.push(mouse_click_11_x);
y_click_ports.push(mouse_click_11_y);
button_click_ports.push(mouse_click_11_button);

var float_13_float_value = [];

function load_float13(){
    for (var i = 0 ; i < float_13_float_value.length ; i++)
        float_13_float_value[i](1.0);
};


// block_15 = Range
var range_15_value = [];

var range_15_invalue = function(value){
    document.getElementById("block_15").value = value;
    change_value15(value);
    return true;
    };


// block_16 = Check
var check_16_value = [];

var check_16_invalue = function(value){
    if (value)
    document.getElementById("block_16").checked = true;
    else
    document.getElementById("block_16").checked = false;
    return true;
    };


// Print
var print_18_float_value = function(value){
    document.getElementById("block_18").innerHTML = value;
    return true;
    };

var print_18_char_value = function(value){
    document.getElementById("block_18").innerHTML = value;
    return true;
    };

var print_18_color_value = function(value){
    document.getElementById("block_18").innerHTML = value;
    return true;
    };

var print_18_string_value = function(value){
    document.getElementById("block_18").innerHTML = value;
    return true;
    };

var print_18_point_value = function(value){
    document.getElementById("block_18").innerHTML = "("+value+")";
    return true;
    };

var print_18_bool_value = function(value){
    document.getElementById("block_18").innerHTML = "("+value+")";
    return true;
    };

// block_2 = Oscillator
var block_2 =  context.createOscillator();
var oscillator_2_osc_freq = block_2.frequency;
var oscillator_2_sound = block_2;
var oscillator_2_freq = function(value){
    block_2.frequency.value = value;
};

var oscillator_2_type = function(value){
    oscillator = ''
    if (value < 1) oscillator = 'square';
    if (value == 1) oscillator = 'sine';
    if (value == 2) oscillator = 'sawtooth';
    if (value > 2) oscillator = 'triangle';
    block_2.type = oscillator;
};

// block_7 = Multiply Float
var block_7_arg1 = 0;
var block_7_arg2 = 0;
var multiply_float_7_result = [];

var multiply_float_7_first_number = function(value){
    block_7_arg1 = parseFloat(value);
    result = parseFloat(block_7_arg1) * parseFloat(block_7_arg2);
    for (var i = 0; i < multiply_float_7_result.length ; i++){
        multiply_float_7_result[i](result);
    }
    return true;
    };

var multiply_float_7_second_number = function(value){
    block_7_arg2 = parseFloat(value);
    result = parseFloat(block_7_arg1) * parseFloat(block_7_arg2);
    for (var i = 0; i < multiply_float_7_result.length ; i++){
        multiply_float_7_result[i](result);
    }
    return true;
    };

// block_14 = Add Float
var block_14_arg1 = 0;
var block_14_arg2 = 0;
var add_float_14_result = [];

var add_float_14_first_number = function(value){
    block_14_arg1 = parseFloat(value);
    result = parseFloat(block_14_arg1) + parseFloat(block_14_arg2);
    for (var i = 0; i < add_float_14_result.length ; i++){
        add_float_14_result[i](result);
    }
    return true;
    };

var add_float_14_second_number = function(value){
    block_14_arg2 = parseFloat(value);
    result = parseFloat(block_14_arg1) + parseFloat(block_14_arg2);
    for (var i = 0; i < add_float_14_result.length ; i++){
        add_float_14_result[i](result);
    }
    return true;
    };

// block_3 = Oscillator
var block_3 =  context.createOscillator();
var oscillator_3_osc_freq = block_3.frequency;
var oscillator_3_sound = block_3;
var oscillator_3_freq = function(value){
    block_3.frequency.value = value;
};

var oscillator_3_type = function(value){
    oscillator = ''
    if (value < 1) oscillator = 'square';
    if (value == 1) oscillator = 'sine';
    if (value == 2) oscillator = 'sawtooth';
    if (value > 2) oscillator = 'triangle';
    block_3.type = oscillator;
};

// block_6 = Add Sound
var block_6_obj = new Merger(context);
var add_sound_6_sound_input0 = block_6_obj.node;
var add_sound_6_sound_input1 = block_6_obj.node;
var add_sound_6_output = block_6_obj.node;

// block_12 = ADSR

var block_12_obj = new Envelope(context, 200, 20, 100, 50, 0.8);
var adsr_12_input = block_12_obj.node;
var adsr_12_output = block_12_obj.node;

var adsr_12_a = function(value){
    block_12_obj.seta(value);
};

var adsr_12_d = function(value){
    block_12_obj.setd(value);
};

var adsr_12_s = function(value){
    block_12_obj.sets(value);
};

var adsr_12_r = function(value){
    block_12_obj.setr(value);
};

var adsr_12_g = function(value){
    block_12_obj.setg(value);
};

var adsr_12_play = function(value){
    if (value != 0) {
        block_12_obj.play();
    }
};

// block_17 = Gain
var block_17 = context.createGain();
var gain_17_input = block_17;
var gain_17_output = block_17;
var gain_17_gain = block_17.gain;
var gain_17_gain_value = function(value){
    block_17.gain.value = value;
    };

// block_1 = Speaker
var speaker_1_sound = context.destination;

//execution

function change_value8(e){
    value = document.getElementById("block_8").value;
    for (var i = 0; i < range_8_value.length ; i++){
        range_8_value[i](value);
    }
};

function change_value15(e){
    value = document.getElementById("block_15").value;
    for (var i = 0; i < range_15_value.length ; i++){
        range_15_value[i](value);
    }
};

function change_value16(e){
    value = document.getElementById("block_16").checked;
    for (var i = 0; i < check_16_value.length ; i++){
        if (value)
            check_16_value[i](1);
        else
            check_16_value[i](0);
    }
};

block_2.type = 'sine';
block_2.frequency.value = 440; // value in hertz
block_2.detune.value = 100; // value in cents
block_2.start(0);

block_3.type = 'sine';
block_3.frequency.value = 440; // value in hertz
block_3.detune.value = 100; // value in cents
block_3.start(0);
block_17.gain.value = 1;

//connections
range_8_value.push(multiply_float_7_second_number);

mouse_click_11_x.push(oscillator_2_freq);
mouse_click_11_y.push(multiply_float_7_first_number);
mouse_click_11_button.push(add_float_14_first_number);
mouse_click_11_x.push(adsr_12_a);
mouse_click_11_y.push(adsr_12_d);

float_13_float_value.push(add_float_14_second_number);

range_15_value.push(adsr_12_r);

check_16_value.push(gain_17_gain_value);


oscillator_2_sound.connect(add_sound_6_sound_input0);

multiply_float_7_result.push(oscillator_3_freq);

add_float_14_result.push(adsr_12_play);

oscillator_3_sound.connect(add_sound_6_sound_input1);

add_sound_6_output.connect(adsr_12_input);

adsr_12_output.connect(gain_17_input);

gain_17_output.connect(speaker_1_sound);

    </script>
    <body onload='loadme();'>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espetáculo</strong> Chaos das 5</a>
                <nav id="nav">
                    <h2>ORCHIDEA</h2>
                    <h3>Funcionalidades</h3>
                    <a href="samples.jsp">Samples</a>
                    <a href="cellPhoneCrazy.jsp">CellPhoneCrazy</a>
                    <a href="instrumento1.jsp">Instrumento 1</a>
                    <a href="instrumento2.jsp">Instrumento 2</a>
                    <!--<a href="uploadFoto.jsp">Tirar uma foto</a>
                    <a href="ServletCarregaGaleria">Galeria de fotos</a>-->
                    <a href=""></a>
                    <h3>Sobre</h3>
                    <a href="sobreAlice.jsp">Sobre Alice</a>
                    <a href="sobreOrchidea.jsp">Sobre Orchidea</a>
                    <a href="sobreMovere.jsp">Sobre Movere</a>
                    <a href=""></a>
                </nav>
                <a href="#navPanel" class="navPanelToggle"><span class="fa fa-bars"></span></a>
            </div>
        </header>

        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <header>
                    <h1>Clique em diferentes posições da tela!</h1>
                </header>

                <div class="flex ">
                    <div>
                       Multiply <input type="range" min="0.0" max="100.0" onchange="change_value8(event);" id="block_8"><br>

Release <input type="range" min="100.0" max="1000.0" onchange="change_value15(event);" id="block_15"><br>

<input type="checkbox" onchange="change_value16(event);" id="block_16">
                    </div>
                    </br></br></br></br></br></br>
                    <div>
                        <span class="icon fa-backward"></span>
                        <a href="menu_instrumentos.jsp">
                            <h3>Voltar</h3>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>
