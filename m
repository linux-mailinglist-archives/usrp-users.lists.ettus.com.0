Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88832277786
	for <lists+usrp-users@lfdr.de>; Thu, 24 Sep 2020 19:13:12 +0200 (CEST)
Received: from [::1] (port=49898 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLUnt-0007oz-BD; Thu, 24 Sep 2020 13:13:09 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:45922)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kLUnp-0007hW-2t
 for usrp-users@lists.ettus.com; Thu, 24 Sep 2020 13:13:05 -0400
Received: by mail-qv1-f41.google.com with SMTP id cv8so2255487qvb.12
 for <usrp-users@lists.ettus.com>; Thu, 24 Sep 2020 10:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Ntzy1ldlwy06pEFxaxa9bGfpHvvi/RygBkdtKa4q2is=;
 b=DWWFn2WiMJ9CQQZlyJGwM+kaZNuAAC5JS8GmACg7OaqvfmKCWBbytiUPcpLaZ/I33f
 MVqA4EgdTz1/yIz3gUcby1/NHF2ZAJJhdp/yE933AnbJ2/jzGUV3eBhSxi2mvIMJv3+p
 Xgeuq0i5XOwbcOtZfgjjSLd8A1y5CJFY/xLzm4krV9AKYoGPl6J89NSMJvr0nSP21ylG
 dqZU0wlk98dTJpTyasZWMK0yDIu4oQc+N+U4cwnEj2bE1Zz6itFDXVoNI1MPi7/sqjXm
 G+TVk+cw9r78Lggh4+bsABMk9K9M3ayrOA4pYvnC1rR3qecagqNqACfQwfiCeShPyHz7
 uVXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Ntzy1ldlwy06pEFxaxa9bGfpHvvi/RygBkdtKa4q2is=;
 b=hiWZnpB1QkTBHtG7seTuj9uQdwqeASq0zYkkvEsERKYlZJWK5k38ofO7n9PmdGOkGQ
 FqmoI9w1HBrk9KlYCInq3uY+hm5JoJUy3588/0fMJ+xAhfEj3QXxEZegUOwSCXrSzBcZ
 dytgm6P/Sbmq39TMlTPSXSbrDPlqHZGyKABUZWSwHdv4FkHTRwqYoQ3zii1p2fU2iq6n
 ZiyR8kL76qxaI/J5e/QJZYrNaFOOAejr1w6+32GcakG6UBvRAKLy7sjUnfxQQc0qSWrV
 cGU4RoqfwbvjniBA4WB/v5MgmiWgQP8RzS9lGuuH+UwCgOWEAM59HWalJFZNEmOP/luU
 Htgw==
X-Gm-Message-State: AOAM533YPQOLPz7/pZ4Qs2MxjX+Th1Jk/ui/LV6kAWuQmMZOYYd8O5TE
 evR2yNNvi1Ewj6s0Sb3oa7O98DoAHWBLtg==
X-Google-Smtp-Source: ABdhPJwrei4CuCEHyGmRv1Qs+xP0YXAwfZoYyLRttBL0adtkBat7iJYEeudR7lIl6R06V5B1EQRdBA==
X-Received: by 2002:ad4:4527:: with SMTP id l7mr139027qvu.2.1600967544310;
 Thu, 24 Sep 2020 10:12:24 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id h199sm20624qke.112.2020.09.24.10.12.23
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Sep 2020 10:12:23 -0700 (PDT)
Message-ID: <5F6CD377.3090505@gmail.com>
Date: Thu, 24 Sep 2020 13:12:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-ab2db2d0-d5b3-4751-af25-4af04996694e-1600965652040@3c-app-gmx-bap40>
In-Reply-To: <trinity-ab2db2d0-d5b3-4751-af25-4af04996694e-1600965652040@3c-app-gmx-bap40>
Subject: Re: [USRP-users] RFNoC: Initialization process and packaging
 questions!
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3038205669881013605=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============3038205669881013605==
Content-Type: multipart/alternative;
 boundary="------------000500090402000407070702"

This is a multi-part message in MIME format.
--------------000500090402000407070702
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/24/2020 12:40 PM, George Smith via USRP-users wrote:
> Hey Marcus,
> I answer your questions under yours.
>
> <quote author="Marcus D. Leech via USRP-users">
You're confusing me with Marcus Mueller....


> Dear George,
>
> On 05.08.20 21:25, George Smith via USRP-users wrote:
> > After reading and doing the official /Getting Started with RFNoc 
> Development
> > guide/, I implemented my own VHDL/Verilog files and adapted the 
> corresponding
> > XMLs for GNURadio and UHD-Integration.
> Nice!
> >  Furthermore I changed and added needed
> > C++ functions in the include and lib folder. Afterwards I uploaded 
> the bitstream
> > created by Vivado 2018.3 (AR_71898 Patch).
> > Unfortunately the system is not working as expected. Generally the 
> RFNoC block
> > is doing something (it's not hanging) but the generated output is wrong.
> :(
> > Of course, I created a simulation testbench before, which generates 
> the correct
> > output.
> :( :(
> > In order to eliminate the misbehaviour, I have some more or less 
> universal
> > questions:
> > 1)
> > My project itself is written in VHDL, and I wrote my testbench for this
> > (working) code. But as I understood so far the toplevel has to be in 
> Verilog for
> > which the RFNoC-Modtool creates a system verilog file as a 
> testbench. Is it
> > possible to include a Verilog toplevel file, with VHDL component 
> files inside in
> > your testbench? If this mixed language setting would be working I 
> could test my
> > system more in total.
> <quote author="Marcus D. Leech via USRP-users">
> Sure! All that has to match is the interface.
> </quote>
> Ok, I am going to create a bigger environment.
> > 2)
> > In my project I have some components, which need to be configured. 
> My testbench
> > does this for the VHDL files as following: For the initilization I 
> use an
> > (active-low) reset signal and set all valid signals to zero. After 
> some clock
> > cycle periods, I assign the configuration values and set all valid 
> signals to
> > one. If the configuration signals are successfully loaded the 
> corresponding
> > ready signals are set to one (by the components itself) and the 
> valid signals
> > are set to zero again. Afterwards the data from the input stream can be
> > processed. Generally said, this corresponds to the AMBA 4 
> AXI4-Stream Protocol
> > specification.
> > My first question is, how does the initialization process works on 
> the Ettus board?
> > I know, that there are "test1_imp1.cc" and 
> "test1_block_ctrl_impl.cpp" files in
> > the lib directory, where I can set the order and the configuration 
> in the
> > constructor. I did this. So the configuration should be finished 
> before the
> > stream processing starts. But using this way, are valid (and ready) 
> signals
> > handled similarly as I explained before?
>
> <quote author="Marcus D. Leech via USRP-users">
> Hm, not really. If your host needs to configure your RFNoC entity, it
> does so via register writes; there's no special "configuration time" 
> signal.
> </quote>
>
> I think I have to go a bit more in detail. In the test1_impl.cc file, 
> I call functions which are implemented in the 
> test1_block_ctrl_impl.cpp. I think this is the way, a configuration 
> generally should be done, shouldn't it?
> The implemented functions in test1_block_ctrl_impl.cpp contain 
> register writes (SR_WRITE) where I set the corresponding configuration 
> values. As I said I did this in a predefined order.
> Between two register writes (in the constructor) are there some clock 
> cycles in between as well? How do I manually specify the clock cycles 
> in between?
> If this would not be possible, I ask myself how can an array of values 
> (for example an integer array) be loaded via SR_WRITE into the FPGA 
> memory? Normally a new value is loaded each clock cycle.
> > 3)
> > If I execute the/uhd_ursp_probe/ command, I always get a warning 
> from RFNoC:
> > /Can't find a block controller for key test1, using default block 
> controller/
> > Are the "/test1_impl.cc/" and the the "/test1_block_ctrl_impl.cpp/" 
> the default
> > block controller or are these files the missing keys?
>
> <quote author="Marcus D. Leech via USRP-users">
> I'd have to look that up, but I don't think so. A block controller does
> the setup mentioned above on the host side and communicates the block's
> properties to UHD / RFNoC.
> There's a default one (from which all others inherit).
> </quote>
> >  Normally, I would
> > interpret these ones as the missing  keys, but as I execute the 
> RFNoC block in
> > GNURadio I get some debug messages included in these files. So they 
> seem to be
> > used and I am confused.
> <quote author="Marcus D. Leech via USRP-users">
> Puh, not quite sure what you're telling us here!
> </quote>
> This would be cool if you can look it up. Yes i understood, that the 
> block controller has to be set up on the host side, so I looked for a 
> filename which may be considered. In my eyes the only file is 
> test1_block_ctrl_impl.cpp
> This file is there and it is used, since my functions are included in 
> it. I inserted some debug messages, which are printed out in GNU-Radio 
> console.
> So I am confused why I get this warning.
> 4)
> Do you have an answer for this?
> > 5)
> > After the RFNoC block I use a copy block in order to save the 
> output. I would
> > assume, that the output is only generated if the (output) valid 
> signal equals one.
> > Is it true?
>
> <quote author="Marcus D. Leech via USRP-users">
> Kind of. The valid signals are part of AXI4s, as you've noticed above,
> and control the data flow between AXI4s things, like RFNoC blocks on the
> FPGA.
> The host doesn't see any of these, of course. It's just the way data is
> exchanged on-FPGA within the RFNoC framework (much like your PC doesn't
> see the ethernet framing of the datacenter that a webserver is in: these
> are not part of the data communicated).
> </quote>
> Yes, I understand, that inside the FPGA, this is handled as AXI4 
> streams. But before and after the AXI-Wrapper, the signals are 
> converted from/to the NOC-Shell (inside the AXI-Wrapper).  Using this 
> NOC-Shell and GNU-Radio, I didn't know, how valid signals are handled 
> and how the communication is done with other GNU-Radio blocks outside 
> the board. So I can conclude that the AXI4 behaviour is "forwarded" 
> (in a similar way) to the other blocks too.
> <quote author="Marcus D. Leech via USRP-users">
> (also: why the copy block?)
> </quote>
> If I want to use two blocks in GNU-Radio containing one RFNOC-Host 
> stream, I need one, don't I?
> > 6)
> > Consecutively to my VHDL component, I use your RFNoC packet resizer.
> <quote author="Marcus D. Leech via USRP-users">
> Why, exactly? This feels kind of arbitrary?
> </quote>
> Yes, the use of the packet resizer has to do something with 
> arbitrariness for me. I want to assign each new output sample to for 
> example eight different output packages in consecutive order. The 
> packet resizer seemed to match, but since I do not know how an input 
> package is defined, I think about if I should really use it.
> > It resizes
> > the input packets to a configurable size. But, how is an /input 
> package /defined?
> > Is it dependent from the bit size? Do I really need it for testing a 
> basic
> > functionality or is the axi_wrapper sufficient?
> > 7)
> > I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7. Is there an Ettus 
> FPGA
> > version planned, which supports Python 3?
> <quote author="Marcus D. Leech via USRP-users">
> The FPGA never sees anything even remotely related to Python... so um,
> yes? Every FPGA version is Python2, 3 and Python 4 compatible!
> You probably mean you want GNU Radio with Python 3: Yeah, that exists.
> Update to a current version of Python. If you, for example, used a
> current Ubuntu 20.04, you'd get GNU Radio 3.8.1.0, which is Py3, and
> it's linked against Ubuntu 20.04's version of UHD, which is UHD 3.15.
> So, no more building UHD and GNU Radio from source; you'd only need to
> build gr-ettus from source. So, upgrade to a current OS, and you get all
> that.
> </quote>
> Kind of. I want to install the whole RFNoC package with Python 3. This 
> inclues uhd, gnuradio, gr-ettus andd uhd-fpga. If I install it with 
> gnuradio 3.8, uhd 3.15, gr-ettus 3.8 and uhd-fpga (uhd 3.15.LTS) with 
> python 3, I get a swig error while building gr-ettus. So it does not 
> seem to work.
> <quote author="Marcus D. Leech via USRP-users">
> Best regards,
> Marcus
> </quote>
>
> Thanks for reanswering my questions.
> Kind regards
> George
> _______________________________________________
> USRP-users mailing list
> <email>USRP-users@.ettus</email>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> </quote>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------000500090402000407070702
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/24/2020 12:40 PM, George Smith
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:trinity-ab2db2d0-d5b3-4751-af25-4af04996694e-1600965652040@3c-app-gmx-bap40"
      type="cite">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div style="font-family: Verdana;font-size: 12.0px;">
          <div style="font-family: Verdana;font-size: 12.0px;">
            <div>
              <div>Hey Marcus,</div>
              <div>I answer your questions under yours.</div>
              <div><br>
                &lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    You're confusing me with Marcus Mueller....<br>
    <br>
    <br>
    <blockquote
cite="mid:trinity-ab2db2d0-d5b3-4751-af25-4af04996694e-1600965652040@3c-app-gmx-bap40"
      type="cite">
      <div style="font-family: Verdana;font-size: 12.0px;">
        <div style="font-family: Verdana;font-size: 12.0px;">
          <div style="font-family: Verdana;font-size: 12.0px;">
            <div>
              <div>
                Dear George,</div>
              <div><br>
                On 05.08.20 21:25, George Smith via USRP-users wrote:<br>
                &gt; After reading and doing the official /Getting
                Started with RFNoc Development<br>
                &gt; guide/, I implemented my own VHDL/Verilog files and
                adapted the corresponding<br>
                &gt; XMLs for GNURadio and UHD-Integration.<br>
                Nice!<br>
                &gt;  Furthermore I changed and added needed<br>
                &gt; C++ functions in the include and lib folder.
                Afterwards I uploaded the bitstream<br>
                &gt; created by Vivado 2018.3 (AR_71898 Patch).<br>
                &gt; Unfortunately the system is not working as
                expected. Generally the RFNoC block<br>
                &gt; is doing something (it's not hanging) but the
                generated output is wrong.<br>
                :(<br>
                &gt; Of course, I created a simulation testbench before,
                which generates the correct<br>
                &gt; output.<br>
                :( :(<br>
                &gt; In order to eliminate the misbehaviour, I have some
                more or less universal<br>
                &gt; questions:<br>
                &gt; 1)<br>
                &gt; My project itself is written in VHDL, and I wrote
                my testbench for this<br>
                &gt; (working) code. But as I understood so far the
                toplevel has to be in Verilog for<br>
                &gt; which the RFNoC-Modtool creates a system verilog
                file as a testbench. Is it<br>
                &gt; possible to include a Verilog toplevel file, with
                VHDL component files inside in<br>
                &gt; your testbench? If this mixed language setting
                would be working I could test my<br>
                &gt; system more in total.</div>
              <div>&lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                Sure! All that has to match is the interface.<br>
                &lt;/quote&gt;<br>
                Ok, I am going to create a bigger environment.</div>
              <div>&gt; 2)<br>
                &gt; In my project I have some components, which need to
                be configured. My testbench<br>
                &gt; does this for the VHDL files as following: For the
                initilization I use an<br>
                &gt; (active-low) reset signal and set all valid signals
                to zero. After some clock<br>
                &gt; cycle periods, I assign the configuration values
                and set all valid signals to<br>
                &gt; one. If the configuration signals are successfully
                loaded the corresponding<br>
                &gt; ready signals are set to one (by the components
                itself) and the valid signals<br>
                &gt; are set to zero again. Afterwards the data from the
                input stream can be<br>
                &gt; processed. Generally said, this corresponds to the
                AMBA 4 AXI4-Stream Protocol<br>
                &gt; specification.<br>
                &gt; My first question is, how does the initialization
                process works on the Ettus board?<br>
                &gt; I know, that there are "test1_imp1.cc" and
                "test1_block_ctrl_impl.cpp" files in<br>
                &gt; the lib directory, where I can set the order and
                the configuration in the<br>
                &gt; constructor. I did this. So the configuration
                should be finished before the<br>
                &gt; stream processing starts. But using this way, are
                valid (and ready) signals<br>
                &gt; handled similarly as I explained before?</div>
              <div><br>
                &lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                Hm, not really. If your host needs to configure your
                RFNoC entity, it<br>
                does so via register writes; there's no special
                "configuration time" signal.<br>
                &lt;/quote&gt;</div>
              <div><br>
                I think I have to go a bit more in detail. In the
                test1_impl.cc file, I call functions which are
                implemented in the test1_block_ctrl_impl.cpp. I think
                this is the way, a configuration generally should be
                done, shouldn't it?<br>
                The implemented functions in test1_block_ctrl_impl.cpp
                contain register writes (SR_WRITE) where I set the
                corresponding configuration values. As I said I did this
                in a predefined order.<br>
                Between two register writes (in the constructor) are
                there some clock cycles in between as well? How do I
                manually specify the clock cycles in between?<br>
                If this would not be possible, I ask myself how can an
                array of values (for example an integer array) be loaded
                via SR_WRITE into the FPGA memory? Normally a new value
                is loaded each clock cycle.</div>
              <div>&gt; 3)<br>
                &gt; If I execute the/uhd_ursp_probe/ command, I always
                get a warning from RFNoC:<br>
                &gt; /Can't find a block controller for key test1, using
                default block controller/<br>
                &gt; Are the "/test1_impl.cc/" and the the
                "/test1_block_ctrl_impl.cpp/" the default<br>
                &gt; block controller or are these files the missing
                keys?</div>
              <div><br>
                &lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                I'd have to look that up, but I don't think so. A block
                controller does<br>
                the setup mentioned above on the host side and
                communicates the block's<br>
                properties to UHD / RFNoC.</div>
              <div>There's a default one (from which all others
                inherit).<br>
                &lt;/quote&gt;</div>
              <div>&gt;  Normally, I would<br>
                &gt; interpret these ones as the missing  keys, but as I
                execute the RFNoC block in<br>
                &gt; GNURadio I get some debug messages included in
                these files. So they seem to be<br>
                &gt; used and I am confused.</div>
              <div>&lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                Puh, not quite sure what you're telling us here!<br>
                &lt;/quote&gt;</div>
              <div>This would be cool if you can look it up. Yes i
                understood, that the block controller has to be set up
                on the host side, so I looked for a filename which may
                be considered. In my eyes the only file is
                test1_block_ctrl_impl.cpp<br>
                This file is there and it is used, since my functions
                are included in it. I inserted some debug messages,
                which are printed out in GNU-Radio console.<br>
                So I am confused why I get this warning.</div>
              <div>4)</div>
              <div>Do you have an answer for this?</div>
              <div>&gt; 5)<br>
                &gt; After the RFNoC block I use a copy block in order
                to save the output. I would<br>
                &gt; assume, that the output is only generated if the
                (output) valid signal equals one.<br>
                &gt; Is it true?</div>
              <div><br>
                &lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                Kind of. The valid signals are part of AXI4s, as you've
                noticed above,<br>
                and control the data flow between AXI4s things, like
                RFNoC blocks on the<br>
                FPGA.</div>
              <div>The host doesn't see any of these, of course. It's
                just the way data is<br>
                exchanged on-FPGA within the RFNoC framework (much like
                your PC doesn't<br>
                see the ethernet framing of the datacenter that a
                webserver is in: these<br>
                are not part of the data communicated).<br>
                &lt;/quote&gt;</div>
              <div>Yes, I understand, that inside the FPGA, this is
                handled as AXI4 streams. But before and after the
                AXI-Wrapper, the signals are converted from/to the
                NOC-Shell (inside the AXI-Wrapper).  Using this
                NOC-Shell and GNU-Radio, I didn't know, how valid
                signals are handled and how the communication is done
                with other GNU-Radio blocks outside the board. So I can
                conclude that the AXI4 behaviour is "forwarded" (in a
                similar way) to the other blocks too.</div>
              <div>&lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                (also: why the copy block?)<br>
                &lt;/quote&gt;</div>
              <div>If I want to use two blocks in GNU-Radio containing
                one RFNOC-Host stream, I need one, don't I?</div>
              <div> </div>
              <div>&gt; 6)<br>
                &gt; Consecutively to my VHDL component, I use your
                RFNoC packet resizer.</div>
              <div>&lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                Why, exactly? This feels kind of arbitrary?<br>
                &lt;/quote&gt;</div>
              <div>Yes, the use of the packet resizer has to do
                something with arbitrariness for me. I want to assign
                each new output sample to for example eight different
                output packages in consecutive order. The packet resizer
                seemed to match, but since I do not know how an input
                package is defined, I think about if I should really use
                it.</div>
              <div> </div>
              <div>&gt; It resizes<br>
                &gt; the input packets to a configurable size. But, how
                is an /input package /defined?<br>
                &gt; Is it dependent from the bit size? Do I really need
                it for testing a basic<br>
                &gt; functionality or is the axi_wrapper sufficient?<br>
                &gt; 7)<br>
                &gt; I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7.
                Is there an Ettus FPGA<br>
                &gt; version planned, which supports Python 3?</div>
              <div>&lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                The FPGA never sees anything even remotely related to
                Python... so um,<br>
                yes? Every FPGA version is Python2, 3 and Python 4
                compatible!</div>
              <div>You probably mean you want GNU Radio with Python 3:
                Yeah, that exists.<br>
                Update to a current version of Python. If you, for
                example, used a<br>
                current Ubuntu 20.04, you'd get GNU Radio 3.8.1.0, which
                is Py3, and<br>
                it's linked against Ubuntu 20.04's version of UHD, which
                is UHD 3.15.<br>
                So, no more building UHD and GNU Radio from source;
                you'd only need to<br>
                build gr-ettus from source. So, upgrade to a current OS,
                and you get all<br>
                that.<br>
                &lt;/quote&gt;</div>
              <div>Kind of. I want to install the whole RFNoC package
                with Python 3. This inclues uhd, gnuradio, gr-ettus andd
                uhd-fpga. If I install it with gnuradio 3.8, uhd 3.15,
                gr-ettus 3.8 and uhd-fpga (uhd 3.15.LTS) with python 3,
                I get a swig error while building gr-ettus. So it does
                not seem to work.</div>
              <div>&lt;quote author="Marcus D. Leech via USRP-users"&gt;<br>
                Best regards,</div>
              <div>Marcus<br>
                &lt;/quote&gt;</div>
              <div><br>
                Thanks for reanswering my questions.</div>
              <div>Kind regards</div>
              <div>George</div>
              <div>_______________________________________________<br>
                USRP-users mailing list<br>
                &lt;email&gt;<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@.ettus">USRP-users@.ettus</a>&lt;/email&gt;<br>
                <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                  target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                &lt;/quote&gt;</div>
              <div> </div>
            </div>
          </div>
        </div>
        <div> </div>
        <div class="signature"> </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------000500090402000407070702--


--===============3038205669881013605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3038205669881013605==--

