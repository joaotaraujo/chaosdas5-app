<!DOCTYPE HTML>
<html>
    <head>
        <title>Chaos das 5</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="shortcut icon" href="images/logoAlice.png">
    </head>
    <script>
        function loadme(){

        window.addEventListener('deviceorientation', handleDeviceOrientation8);

        load_float9();

        load_float10();

        load_float17();

        load_float18();

        background_23_rgb('#F00');


        return;
        }
        var context = new (window.AudioContext || window.webkitAudioContext)();

        WhiteNoise = function(context) {
          var that = this;
          this.x = 0; // Initial sample number
          this.context = context;
          this.node = context.createScriptProcessor(1024, 0, 2);
          this.node.onaudioprocess = function(e) { that.process(e) };
        }

        WhiteNoise.prototype.process = function(e) {
          var data_l = e.outputBuffer.getChannelData(0);
          var data_r = e.outputBuffer.getChannelData(1);
          for (var i = 0; i < data_l.length; ++i) {
        //    data[i] = Math.sin(this.x++);
              data_l[i] = (Math.random() * 2) - 1;
              data_r[i] = (Math.random() * 2) - 1;
          }
        }

        AddSoundFloat = function(context, float_value) {
            var that = this;
            this.float = float_value;
            this.context = context;
            this.node = context.createScriptProcessor(1024, 1, 1);
            this.node.onaudioprocess = function(e) { that.process(e) };
        }

        AddSoundFloat.prototype.process = function(e) {
            var in0 = e.inputBuffer.getChannelData(0);
            var out = e.outputBuffer.getChannelData(0);
            for (var i = 0; i < in0.length; ++i) {
                out[i] = in0[i] + this.float;
            }
        }

        DivSoundFloat = function(context, float_value) {
            var that = this;
            this.float = float_value;
            this.context = context;
            this.node = context.createScriptProcessor(1024, 1, 1);
            this.node.onaudioprocess = function(e) { that.process(e) };
        }

        DivSoundFloat.prototype.process = function(e) {
            var in0 = e.inputBuffer.getChannelData(0);
            var out = e.outputBuffer.getChannelData(0);
            for (var i = 0; i < in0.length; ++i) {
                out[i] = in0[i] / this.float;
            }
        }

        MulSoundFloat = function(context, float_value) {
            var that = this;
            this.float = float_value;
            this.context = context;
            this.node = context.createScriptProcessor(1024, 1, 1);
            this.node.onaudioprocess = function(e) { that.process(e) };
        }

        MulSoundFloat.prototype.process = function(e) {
            var in0 = e.inputBuffer.getChannelData(0);
            var out = e.outputBuffer.getChannelData(0);
            for (var i = 0; i < in0.length; ++i) {
                out[i] = in0[i] * this.float;
            }
        }

        //declaration block

        var device_orientation_8_alpha = [];
        var device_orientation_8_beta = [];
        var device_orientation_8_gamma = [];

        function handleDeviceOrientation8(event){
            for (var i = 0 ; i < device_orientation_8_alpha.length ; i++)
                device_orientation_8_alpha[i](event.alpha);

            for (var i = 0 ; i < device_orientation_8_beta.length ; i++)
                device_orientation_8_beta[i](event.beta);

            for (var i = 0 ; i < device_orientation_8_gamma.length ; i++)
                device_orientation_8_gamma[i](event.gamma);
        }

        var float_9_float_value = [];

        function load_float9(){
            for (var i = 0 ; i < float_9_float_value.length ; i++)
                float_9_float_value[i](1.0);
        };


        var float_10_float_value = [];

        function load_float10(){
            for (var i = 0 ; i < float_10_float_value.length ; i++)
                float_10_float_value[i](2.0);
        };


        var float_17_float_value = [];

        function load_float17(){
            for (var i = 0 ; i < float_17_float_value.length ; i++)
                float_17_float_value[i](100.0);
        };


        var float_18_float_value = [];

        function load_float18(){
            for (var i = 0 ; i < float_18_float_value.length ; i++)
                float_18_float_value[i](600.0);
        };


        // block_19 = Oscillator
        var block_19 =  context.createOscillator();
        var oscillator_19_osc_freq = block_19.frequency;
        var oscillator_19_sound = block_19;
        var oscillator_19_freq = function(value){
            block_19.frequency.value = value;
        };
        var oscillator_19_type = function(value){
            oscillator = ''
            if (value < 1) oscillator = 'square';
            if (value == 1) oscillator = 'sine';
            if (value == 2) oscillator = 'sawtooth';
            if (value > 2) oscillator = 'triangle';
            block_19.type = oscillator;
        };

        // block_20 = White Noise
        var block_20 =  new WhiteNoise(context);
        white_noise_20_sound = block_20.node;


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

        // Print
        var print_13_float_value = function(value){
            document.getElementById("block_13").innerHTML = value;
            return true;
            };

        var print_13_char_value = function(value){
            document.getElementById("block_13").innerHTML = value;
            return true;
            };

        var print_13_color_value = function(value){
            document.getElementById("block_13").innerHTML = value;
            return true;
            };

        var print_13_string_value = function(value){
            document.getElementById("block_13").innerHTML = value;
            return true;
            };

        var print_13_point_value = function(value){
            document.getElementById("block_13").innerHTML = "("+value+")";
            return true;
            };

        var print_13_bool_value = function(value){
            document.getElementById("block_13").innerHTML = "("+value+")";
            return true;
            };

        // Print
        var print_14_float_value = function(value){
            document.getElementById("block_14").innerHTML = value;
            return true;
            };

        var print_14_char_value = function(value){
            document.getElementById("block_14").innerHTML = value;
            return true;
            };

        var print_14_color_value = function(value){
            document.getElementById("block_14").innerHTML = value;
            return true;
            };

        var print_14_string_value = function(value){
            document.getElementById("block_14").innerHTML = value;
            return true;
            };

        var print_14_point_value = function(value){
            document.getElementById("block_14").innerHTML = "("+value+")";
            return true;
            };

        var print_14_bool_value = function(value){
            document.getElementById("block_14").innerHTML = "("+value+")";
            return true;
            };

        // block_16 = Multiply Float
        var block_16_arg1 = 0;
        var block_16_arg2 = 0;
        var multiply_float_16_result = [];

        var multiply_float_16_first_number = function(value){
            block_16_arg1 = parseFloat(value);
            result = parseFloat(block_16_arg1) * parseFloat(block_16_arg2);
            for (var i = 0; i < multiply_float_16_result.length ; i++){
                multiply_float_16_result[i](result);
            }
            return true;
            };

        var multiply_float_16_second_number = function(value){
            block_16_arg2 = parseFloat(value);
            result = parseFloat(block_16_arg1) * parseFloat(block_16_arg2);
            for (var i = 0; i < multiply_float_16_result.length ; i++){
                multiply_float_16_result[i](result);
            }
            return true;
            };

        // RGB
        var r22 = '00';
        var g22 = '00';
        var b22 = '00';
        var rgb_22_result = [];

        function update_backgroud_color22(){
            result = '#' + r22 + g22 + b22;
            for (var i = 0; i < rgb_22_result.length ; i++){
                rgb_22_result[i](result);
            }
        }

        var rgb_22_r = function(value){
            value = Math.round(value);
            r22 = value.toString(16);
            if (value < 16)
                r22 = '0'+ r22;
            update_backgroud_color22();
            return true;
            };

        var rgb_22_g = function(value){
            value = Math.round(value);
            g22 = value.toString(16);
            if (value < 16)
                g22 = '0'+ g22;
            update_backgroud_color22();
            return true;
            };

        var rgb_22_b = function(value){
            value = Math.round(value);
            b22 = value.toString(16);
            if (value < 16)
                b22 = '0'+ b22;
            update_backgroud_color22();
            return true;
            };


        // block_3 = Add Sound Float

        var block_3_float = 0;
        var block_3_obj = new AddSoundFloat(context, block_3_float);

        var add_sound_float_3_float_input = function(value){
            block_3_float = parseFloat(value);
            block_3_obj.float = block_3_float;
            return true;
            };


        var add_sound_float_3_sound_input = block_3_obj.node;
        var add_sound_float_3_output = block_3_obj.node;

        var background_23_rgb = function(value){
            document.body.style.backgroundColor = value;
            return true;
            };

        // block_4 = Div Sound Float

        var block_4_float = 1;
        var block_4_obj = new DivSoundFloat(context, block_4_float);

        var div_sound_float_4_float_input = function(value){
            block_4_float = parseFloat(value);
            block_4_obj.float = block_4_float;
            return true;
            };

        var div_sound_float_4_sound_input = block_4_obj.node;
        var div_sound_float_4_output = block_4_obj.node;

        // block_5 = Mul Sound Float

        var block_5_float = 1;
        var block_5_obj = new MulSoundFloat(context, block_5_float);

        var mul_sound_float_5_float_input = function(value){
            block_5_float = parseFloat(value);
            block_5_obj.float = block_5_float;
            return true;
            };

        var mul_sound_float_5_sound_input = block_5_obj.node;
        var mul_sound_float_5_output = block_5_obj.node;

        // block_6 = Add Sound Float

        var block_6_float = 0;
        var block_6_obj = new AddSoundFloat(context, block_6_float);

        var add_sound_float_6_float_input = function(value){
            block_6_float = parseFloat(value);
            block_6_obj.float = block_6_float;
            return true;
            };


        var add_sound_float_6_sound_input = block_6_obj.node;
        var add_sound_float_6_output = block_6_obj.node;

        // block_1 = Oscillator
        var block_1 =  context.createOscillator();
        var oscillator_1_osc_freq = block_1.frequency;
        var oscillator_1_sound = block_1;
        var oscillator_1_freq = function(value){
            block_1.frequency.value = value;
        };
        var oscillator_1_type = function(value){
            oscillator = ''
            if (value < 1) oscillator = 'square';
            if (value == 1) oscillator = 'sine';
            if (value == 2) oscillator = 'sawtooth';
            if (value > 2) oscillator = 'triangle';
            block_1.type = oscillator;
        };

        // block_7 = Speaker
        var speaker_7_sound = context.destination;

        //execution

        block_19.type = 'sine';
        block_19.frequency.value = 440; // value in hertz
        block_19.detune.value = 100; // value in cents
        block_19.start(0);

        block_2.type = 'square';
        block_2.frequency.value = 1.0; // value in hertz
        block_2.detune.value = 100; // value in cents
        block_2.start(0);

        block_1.type = 'sine';
        block_1.frequency.value = 440; // value in hertz
        block_1.detune.value = 100; // value in cents
        block_1.start(0);

        //connections
        device_orientation_8_alpha.push(oscillator_2_freq);
        device_orientation_8_alpha.push(print_13_float_value);
        device_orientation_8_beta.push(print_14_float_value);
        device_orientation_8_beta.push(add_sound_float_6_float_input);
        device_orientation_8_gamma.push(multiply_float_16_first_number);
        device_orientation_8_beta.push(mul_sound_float_5_float_input);
        device_orientation_8_alpha.push(rgb_22_r);
        device_orientation_8_beta.push(rgb_22_g);
        device_orientation_8_gamma.push(rgb_22_b);

        float_9_float_value.push(add_sound_float_3_float_input);

        float_10_float_value.push(div_sound_float_4_float_input);

        float_17_float_value.push(multiply_float_16_second_number);




        oscillator_2_sound.connect(add_sound_float_3_sound_input);



        multiply_float_16_result.push(oscillator_1_freq);

        rgb_22_result.push(background_23_rgb);

        add_sound_float_3_output.connect(div_sound_float_4_sound_input);


        div_sound_float_4_output.connect(mul_sound_float_5_sound_input);

        mul_sound_float_5_output.connect(add_sound_float_6_sound_input);

        add_sound_float_6_output.connect(oscillator_1_osc_freq);

        oscillator_1_sound.connect(speaker_7_sound);



    </script>
    <body onload='loadme();'>
        <!-- Header -->
        <header id="header">
            <div class="inner">
                <a href="index.jsp" class="logo"><strong>Espetáculo</strong> Chaos das 5</a>
                
            </div>
        </header>

        <!-- Banner -->
        <section id="banner">
            <div class="inner">
                <header>
                    <h1>Movimente seu celular!</h1>
                </header>

                <div class="flex ">
                    <div>
                        alpha <span id="block_13"></span><br>
                        Label <span id="block_14"></span><br>
                    </div>
                    <p><p><p><p><p>
                    
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
