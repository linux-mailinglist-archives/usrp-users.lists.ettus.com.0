Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9166105B5A
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2019 21:51:54 +0100 (CET)
Received: from [::1] (port=33240 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXtQe-0001jk-Mt; Thu, 21 Nov 2019 15:51:52 -0500
Received: from mail-lj1-f172.google.com ([209.85.208.172]:35328)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iXtQb-0001LR-FO
 for usrp-users@lists.ettus.com; Thu, 21 Nov 2019 15:51:49 -0500
Received: by mail-lj1-f172.google.com with SMTP id r7so4822685ljg.2
 for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2019 12:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9tV01r9mTQuAWTB2BKWBpB9UoOcpDrNDfyOZ5hCLpbU=;
 b=OLj+Xo80nppGny4XKin1xdsxeV+1fMb+PEd58PQsVjhiANLlpPt1fs3wC1XudE+XUt
 prJUQ/oGq/y7i/20C0D+xe61JeEnZOb8wAsYlZLpgMBa5XDHxjs0oMeUuwKeEz+Ao+La
 LKQdptqG+MJ1McPiOtC2dLmcTkNJm8KIn2wQZOpkQMvM54T91n1n/Eqb0HqzXXRQ2l3E
 5wMr7etaJcwVzN+MT5n+yC/5OinrIPKf/Fe8TtUW00S/JTTYfJGr0TvlIxFnDbPOk1Xj
 4Ezdm5Za2ALkDn1teCc/BSqB1a403d+Q141Z8TOijqPm5dK5L4QY/ZEUR/vWvDFZiQe9
 XlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9tV01r9mTQuAWTB2BKWBpB9UoOcpDrNDfyOZ5hCLpbU=;
 b=ICzyarxpFvf8Im3CzsUL5AIJgOyDXEv+VQtMXT/IY6fq85vnPpPUr82EnRKGaYky5h
 qWppFNbmhJohi3ATgxBoFJqhiuQqmesdC2SF9AEZYj2NoWl6igF/cCJI6m5jwUpu2ngw
 RkGxWk8KDyCx0m+gPIIsi9LIzY+rGISUlnJiTN95jcOvuF442LSX6no7x94H+w9Qn7+1
 bqdIYJcKo+9S8VerbcqZwoSMPmJg50G4XLsXYLX5k8UUEuePlSBN5Ccrm5CCDdeVq/7q
 UIO3ue9VxSQG02CrDVOVUkhOYoe/OzMhLv7QsXsd3WlT113aodAo9CMtalqCnjvInKIa
 ljJQ==
X-Gm-Message-State: APjAAAWYFwcaBQ7ZMt1hYUZXJoh4dxwrJotYwtlroruP08IYmvaEQNzL
 4ZL+vxgmgnpoQwlURZrRWD0Iuu95LAPQ2LeWcdI=
X-Google-Smtp-Source: APXvYqxbo1mhB3qkFD5FD8VQrtVo8pqHtI7Oxj4erHEuBdhvxcNUNyVDsAaMw5i2hON9gFzXD7tMJNc9FdqMtLOOYD8=
X-Received: by 2002:a2e:8e28:: with SMTP id r8mr9138258ljk.21.1574369468065;
 Thu, 21 Nov 2019 12:51:08 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sLFttRpt+J_PSv1Oa7afRJDHr027vvpA9u2BNME7qmscg@mail.gmail.com>
 <CALY+5sKSb9dq-rQM9nJ8i_2UxpmzPBksNoFChccd0YnHQh1arw@mail.gmail.com>
 <CADRnH236gbeUcGXJLePy+=zGiQLdrMCnMb9QJWna-7GHZOxpmg@mail.gmail.com>
In-Reply-To: <CADRnH236gbeUcGXJLePy+=zGiQLdrMCnMb9QJWna-7GHZOxpmg@mail.gmail.com>
Date: Thu, 21 Nov 2019 15:48:26 -0500
Message-ID: <CALY+5sJjLEtyF9R2wvA+eiCOQyMpS6=89=HR0J+e-teE+-Du_A@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Subject: Re: [USRP-users] E312 - Migrating OOT Modules to the USRP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1049302801856198781=="
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

--===============1049302801856198781==
Content-Type: multipart/alternative; boundary="000000000000e3ad250597e17437"

--000000000000e3ad250597e17437
Content-Type: text/plain; charset="UTF-8"

Greetings EJ,

So, from the tutorial, they have you edit the gain.xml file, and this is
what I have for it.

<?xml version="1.0"?>
<!--Default XML file-->
<nocblock>
  <name>gain</name>
  <blockname>gain</blockname>
  <ids>
    <id revision="0">B7DD64941A952AAC</id>
  </ids>
  <!-- Registers -->
  <registers>
    <setreg>
      <name>Gain</name>
      <address>128</address>
    </setreg>
  </registers>
  <!-- Args -->
  <args>
    <args>
      <name>gain</name>
      <type>double</type>
      <value>1.0</value>
      <check>GE($gain, 0.0) AND LE($gain, 32767.0)</check>
      <check_message>Invalid Gain!</check_message>
      <action>
        SR_WRITE("GAIN", IROUND($gain))
      </action>
    </args>
  </args>
  <!--One input, one output. If this is used, better have all the info the
C++ file.-->
  <ports>
    <sink>
      <name>in0</name>
      <type>sc16</name>
    </sink>
    <source>
      <name>out0</name>
      <type>sc16</name>
    </source>
  </ports>
</nocblock>

There is an args value and it is declared as gain.

So from there, I followed your second suggestion and tried to find where it
was installed when I did the cross compile. It was not placed in the
"GRC_BLOCKS_PATH" of "/share/gnuradio/grc/blocks" like the default RFNoC
blocks. It was instead placed in "/share/uhd/rfnoc/bocks" so I added that
to the setup.env file, included below.

LOCALPREFIX=~/newinstall/usr
export PATH=$LOCALPREFIX/bin:$PATH
export LD_LOAD_LIBRARY=$LOCALPREFIX/lib:$LD_LOAD_LIBRARY
export LD_LIBRARY_PATH=$LOCALPREFIX/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$LOCALPREFIX/lib/python2.7/site-packages:$PYTHONPATH
export PKG_CONFIG_PATH=$LOCALPREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export
GRC_BLOCKS_PATH=$LOCALPREFIX/share/gnuradio/grc/blocks:$GRC_BLOCKS_PATH
export UHD_RFNOC_DIR=$LOCALPREFIX/share/uhd/rfnoc/
export UHD_IMAGES_DIR=$LOCALPREFIX/share/uhd/images
export GRC_BLOCKS_PATH=$LOCALPREFIX/share/uhd/rfnoc/blocks:$GRC_BLOCKS_PATH

Unfortunately, after re-sourcing the setup.env, I still get the same
message.

  File "rfnoc_myGain_usrp.py", line 223, in <module>
    main()
  File "rfnoc_myGain_usrp.py", line 212, in main
    tb = top_block_cls(fpga_path=options.fpga_path,
rx_gain=options.rx_gain, rx_digital_gain=options.rx_digital_gain,
rx_freq=options.rx_freq, host_ip_addr=options.host_ip_addr)
  File "rfnoc_myGain_usrp.py", line 117, in __init__
    self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
  File
"/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial/tutorial_swig.py",
line 315, in set_arg
    return _tutorial_swig.gain_sptr_set_arg(self, *args)
RuntimeError: LookupError: Path not found in tree:
/mboards/0/xbar/gain_0/args/0/gain/value

I looked at some of your examples (which have been very helpful to get me
this far) from what I believe is your github someone linked me. Everything
appears to match what it should, for what gain is trying to accomplish.

Regards,
Jon

On Thu, Nov 21, 2019 at 3:27 PM EJ Kreinar <ejkreinar@gmail.com> wrote:

> Hi Jon,
>
> The rfnoc "nocscript" xml definition can create arguments and attach to
> the device tree like you are trying to set there (it's not compiled
> directly, but rather created dynamically from the xml definition)
>
> Recommended debugging...
> 1. Check your OOT gain block xml (in rfnoc/blocks) and make sure it has a
> "gain" field in the "args" list. You'll also want to make sure it writes
> your desired register, but I don't think you're even getting that far
> 2. Make sure the block xml is installed on the e310 embedded prefix and is
> found at run time during uhd_usrp_probe and when running your application.
> If it's not in the right place or not attaching to your block then it won't
> create the gain argument
>
> I'm guessing it's one of those two possibilities...
> EJ
>
> On Thu, Nov 21, 2019, 3:19 PM Jonathan Lockhart via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Greetings,
>>
>> I was able to get the ARM cross compile working. I removed the build
>> directory and re-sourced the dev environment and then the cross-compile
>> used the -mfloar=hard flag. Not sure what caused the issue earlier and why
>> it wasn't picking it up.
>>
>> Now I have a different issue. So I have completed this guide:
>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>
>> I modified the GNURadio just a bit so that the output from gain was
>> placed on a ZMQ push, and the graphics were on the host to graph the signal
>> (seen in the screenshots below).
>>
>> [image: Screenshot from 2019-11-21 15-06-33.jpg]
>>
>> [image: Screenshot from 2019-11-21 15-010-44.jpg]
>>
>> However, when I run the top file for the USRP, I am running into this
>> error.
>>
>> Traceback (most recent call last):
>>   File "rfnoc_myGain_usrp.py", line 223, in <module>
>>     main()
>>   File "rfnoc_myGain_usrp.py", line 212, in main
>>     tb = top_block_cls(fpga_path=options.fpga_path,
>> rx_gain=options.rx_gain, rx_digital_gain=options.rx_digital_gain,
>> rx_freq=options.rx_freq, host_ip_addr=options.host_ip_addr)
>>   File "rfnoc_myGain_usrp.py", line 117, in __init__
>>     self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
>>   File
>> "/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial/tutorial_swig.py",
>> line 315, in set_arg
>>     return _tutorial_swig.gain_sptr_set_arg(self, *args)
>> RuntimeError: LookupError: Path not found in tree:
>> /mboards/0/xbar/gain_0/args/0/gain/value
>>
>> No where else in building GNURadio scripts and .bit files does this
>> "/mboards" arise, and I have looked through my verilog file for gain
>> (gain.v) and it is correct per the instructions in the linked guide, and I
>> built the python and gnuradio hook exactly as the instructions stated to.
>>
>> Anyone have an troubleshooting ideas b/c I am currently at a loss. It did
>> past the test bench they have you build with no issues.
>>
>> Regards,
>> Jon
>>
>>
>>
>>
>> On Wed, Nov 20, 2019 at 3:21 PM Jonathan Lockhart <jlockhartrt@gmail.com>
>> wrote:
>>
>>> Greetings,
>>>
>>> I am having some issues completing the RFNOC build tutorial on the Ettus
>>> E312. The reference documentation is using an X3xx series radio, and from
>>> the final python script it appears to be running the GNR script natively on
>>> the host. I built the exact script from the KB but when running on the
>>> radio it fails stating it can't "import tutorial." I realized all the files
>>> that were installed were placed on the host but not cross compiled for the
>>> E3xx using the SDK and ARM cross compile tool. I tried to complete this
>>> task, but unfortunately the compilation dies here.
>>>
>>> /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/stubs.h:7:11:
>>> fatal error: gnu/stubs-soft.h: No such file or directory
>>>  # include <gnu/stubs-soft.h>
>>>            ^~~~~~~~~~~~~~~~~~
>>> compilation terminated.
>>>
>>> Now I did find the stubs-soft.h file in the libc6-dev-armel-cross in the
>>> apt repo. I installed it and tried to cp the file into the
>>> /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/
>>> location but it still doesn't like that. I verified that on my echo $CC
>>> that the -mfloat is set to hard as shown here.
>>>
>>> jon@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC
>>> arm-oe-linux-gnueabi-gcc -march=armv7-a -mfloat-abi=hard -mfpu=neon
>>> --sysroot=/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi
>>>
>>> So I am not sure why the gain module in the tutorial is looking for the
>>> soft file.
>>>
>>> If anyone has experience in porting their OOT modules over to the
>>> E-series of radios I would appreciate the help.
>>>
>>> Regards,
>>> Jon
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e3ad250597e17437
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greetings EJ,</div><div><br></div><div>So, from the t=
utorial, they have you edit the gain.xml file, and this is what I have for =
it. <br></div><div><br></div><div>&lt;?xml version=3D&quot;1.0&quot;?&gt;<b=
r>&lt;!--Default XML file--&gt;<br>&lt;nocblock&gt;<br>=C2=A0 &lt;name&gt;g=
ain&lt;/name&gt;<br>=C2=A0 &lt;blockname&gt;gain&lt;/blockname&gt;<br>=C2=
=A0 &lt;ids&gt;<br>=C2=A0 =C2=A0 &lt;id revision=3D&quot;0&quot;&gt;B7DD649=
41A952AAC&lt;/id&gt;<br>=C2=A0 &lt;/ids&gt;<br>=C2=A0 &lt;!-- Registers --&=
gt;<br>=C2=A0 &lt;registers&gt;<br>=C2=A0 =C2=A0 &lt;setreg&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;name&gt;Gain&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;add=
ress&gt;128&lt;/address&gt;<br>=C2=A0 =C2=A0 &lt;/setreg&gt;<br>=C2=A0 &lt;=
/registers&gt;<br>=C2=A0 &lt;!-- Args --&gt;<br>=C2=A0 &lt;args&gt;<br>=C2=
=A0 =C2=A0 &lt;args&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;gain&lt;/name&g=
t;<br>=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;double&lt;/type&gt;<br>=C2=A0 =C2=A0=
 =C2=A0 &lt;value&gt;1.0&lt;/value&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;check&gt=
;GE($gain, 0.0) AND LE($gain, 32767.0)&lt;/check&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;check_message&gt;Invalid Gain!&lt;/check_message&gt;<br>=C2=A0 =C2=
=A0 =C2=A0 &lt;action&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 SR_WRITE(&quot;GAI=
N&quot;, IROUND($gain))<br>=C2=A0 =C2=A0 =C2=A0 &lt;/action&gt;<br>=C2=A0 =
=C2=A0 &lt;/args&gt;<br>=C2=A0 &lt;/args&gt;<br>=C2=A0 &lt;!--One input, on=
e output. If this is used, better have all the info the C++ file.--&gt;<br>=
=C2=A0 &lt;ports&gt;<br>=C2=A0 =C2=A0 &lt;sink&gt;<br>=C2=A0 =C2=A0 =C2=A0 =
&lt;name&gt;in0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;sc16&lt;/n=
ame&gt;<br>=C2=A0 =C2=A0 &lt;/sink&gt;<br>=C2=A0 =C2=A0 &lt;source&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;out0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 =
&lt;type&gt;sc16&lt;/name&gt;<br>=C2=A0 =C2=A0 &lt;/source&gt;<br>=C2=A0 &l=
t;/ports&gt;<br>&lt;/nocblock&gt;</div><div><br></div><div>There is an args=
 value and it is declared as gain. <br></div><div><br></div><div>So from th=
ere, I followed your second suggestion and tried to find where it was insta=
lled when I did the cross compile. It was not placed in the &quot;GRC_BLOCK=
S_PATH&quot; of &quot;/share/gnuradio/grc/blocks&quot; like the default RFN=
oC blocks. It was instead placed in &quot;/share/uhd/rfnoc/bocks&quot; so I=
 added that to the setup.env file, included below. <br></div><div><br></div=
><div>LOCALPREFIX=3D~/newinstall/usr<br>export PATH=3D$LOCALPREFIX/bin:$PAT=
H<br>export LD_LOAD_LIBRARY=3D$LOCALPREFIX/lib:$LD_LOAD_LIBRARY<br>export L=
D_LIBRARY_PATH=3D$LOCALPREFIX/lib:$LD_LIBRARY_PATH<br>export PYTHONPATH=3D$=
LOCALPREFIX/lib/python2.7/site-packages:$PYTHONPATH<br>export PKG_CONFIG_PA=
TH=3D$LOCALPREFIX/lib/pkgconfig:$PKG_CONFIG_PATH<br>export GRC_BLOCKS_PATH=
=3D$LOCALPREFIX/share/gnuradio/grc/blocks:$GRC_BLOCKS_PATH<br>export UHD_RF=
NOC_DIR=3D$LOCALPREFIX/share/uhd/rfnoc/<br>export UHD_IMAGES_DIR=3D$LOCALPR=
EFIX/share/uhd/images<br>export GRC_BLOCKS_PATH=3D$LOCALPREFIX/share/uhd/rf=
noc/blocks:$GRC_BLOCKS_PATH</div><div><br></div><div>Unfortunately, after r=
e-sourcing the setup.env, I still get the same message. <br></div><div><br>=
</div><div>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 223, in &lt;m=
odule&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py=
&quot;, line 212, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fpga_path=
=3Doptions.fpga_path, rx_gain=3Doptions.rx_gain, rx_digital_gain=3Doptions.=
rx_digital_gain, rx_freq=3Doptions.rx_freq, host_ip_addr=3Doptions.host_ip_=
addr)<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 117, in __init_=
_<br>=C2=A0 =C2=A0 self.tutorial_gain_0.set_arg(&quot;gain&quot;, rx_digita=
l_gain)<br>=C2=A0 File &quot;/home/root/newinstall/usr/lib/python2.7/site-p=
ackages/tutorial/tutorial_swig.py&quot;, line 315, in set_arg<br>=C2=A0 =C2=
=A0 return _tutorial_swig.gain_sptr_set_arg(self, *args)<br>RuntimeError: L=
ookupError: Path not found in tree: /mboards/0/xbar/gain_0/args/0/gain/valu=
e</div><div><br></div><div>I looked at some of your examples (which have be=
en very helpful to get me this far) from what I believe is your github some=
one linked me. Everything appears to match what it should, for what gain is=
 trying to accomplish. <br></div><div><br></div><div>Regards,</div><div>Jon=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Nov 21, 2019 at 3:27 PM EJ Kreinar &lt;<a href=3D"mailto:=
ejkreinar@gmail.com">ejkreinar@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Jon,<div dir=
=3D"auto"><br></div><div dir=3D"auto">The rfnoc &quot;nocscript&quot; xml d=
efinition can create arguments and attach to the device tree like you are t=
rying to set there (it&#39;s not compiled directly, but rather created dyna=
mically from the xml definition)</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Recommended debugging...</div><div dir=3D"auto">1. Check your OOT=
 gain block xml (in rfnoc/blocks) and make sure it has a &quot;gain&quot; f=
ield in the &quot;args&quot; list. You&#39;ll also want to make sure it wri=
tes your desired register, but I don&#39;t think you&#39;re even getting th=
at far</div><div dir=3D"auto">2. Make sure the block xml is installed on th=
e e310 embedded prefix and is found at run time during uhd_usrp_probe and w=
hen running your application. If it&#39;s not in the right place or not att=
aching to your block then it won&#39;t create the gain argument</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">I&#39;m guessing it&#39;s one of th=
ose two possibilities...=C2=A0</div><div dir=3D"auto">EJ</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 2=
1, 2019, 3:19 PM Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div>Greetings,</div><div><br></div><div>I was able to get the ARM cr=
oss compile working. I removed the build directory and re-sourced the dev e=
nvironment and then the cross-compile used the -mfloar=3Dhard flag. Not sur=
e what caused the issue earlier and why it wasn&#39;t picking it up. <br></=
div><div><br></div><div>Now I have a different issue. So I have completed t=
his guide: <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Devel=
opment" rel=3D"noreferrer noreferrer" target=3D"_blank">https://kb.ettus.co=
m/Getting_Started_with_RFNoC_Development</a></div><div><br></div><div>I mod=
ified the GNURadio just a bit so that the output from gain was placed on a =
ZMQ push, and the graphics were on the host to graph the signal (seen in th=
e screenshots below).</div><div><br></div><div><img src=3D"https://mail.goo=
gle.com/mail/?ui=3D2&amp;ik=3D1ae818862e&amp;attid=3D0.1&amp;th=3D16e8fa0d2=
9d41a0b&amp;view=3Dfimg&amp;rm=3D16e8fa0d29d41a0b&amp;sz=3Dw1600-h1000&amp;=
attbid=3DANGjdJ9y7gFvlLamcYxSJn6AlQPaOWxC-yKbQfs66eomTeFYM6q3_niAOKNUXc1Zg3=
SMXvqL5kKB2WW0iVIUpeHmo3J5jnu8i5PrKbSufhNtuNcli1NuCSF6ANVjs9A&amp;disp=3Dem=
b&amp;realattid=3Dii_k395j53q0&amp;zw" alt=3D"Screenshot from 2019-11-21 15=
-06-33.jpg" width=3D"566" height=3D"323"></div><div><br></div><div><div><di=
v><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D1ae818862e&amp;=
attid=3D0.2&amp;th=3D16e8fa0d29d41a0b&amp;view=3Dfimg&amp;rm=3D16e8fa0d29d4=
1a0b&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ-pgUA2IxgobGph9ydEXrRSxBiZ2abK=
uAIUC6-7E30-eRFqzoPp7Si4HBspS4AqGUMX1xI3FnJFhwEqKs4fyPQ6s4_qFai45x5QazbWRR2=
aPlrFaKrc6EfeGhw&amp;disp=3Demb&amp;realattid=3Dii_k395j8qd1&amp;zw" alt=3D=
"Screenshot from 2019-11-21 15-010-44.jpg" width=3D"566" height=3D"335"><br=
></div></div><div><br></div><div>However, when I run the top file for the U=
SRP, I am running into this error. <br></div><div><br></div><div>Traceback =
(most recent call last):<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, l=
ine 223, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfn=
oc_myGain_usrp.py&quot;, line 212, in main<br>=C2=A0 =C2=A0 tb =3D top_bloc=
k_cls(fpga_path=3Doptions.fpga_path, rx_gain=3Doptions.rx_gain, rx_digital_=
gain=3Doptions.rx_digital_gain, rx_freq=3Doptions.rx_freq, host_ip_addr=3Do=
ptions.host_ip_addr)<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line =
117, in __init__<br>=C2=A0 =C2=A0 self.tutorial_gain_0.set_arg(&quot;gain&q=
uot;, rx_digital_gain)<br>=C2=A0 File &quot;/home/root/newinstall/usr/lib/p=
ython2.7/site-packages/tutorial/tutorial_swig.py&quot;, line 315, in set_ar=
g<br>=C2=A0 =C2=A0 return _tutorial_swig.gain_sptr_set_arg(self, *args)<br>=
RuntimeError: LookupError: Path not found in tree: /mboards/0/xbar/gain_0/a=
rgs/0/gain/value</div><div><br></div><div>No where else in building GNURadi=
o scripts and .bit files does this &quot;/mboards&quot; arise, and I have l=
ooked through my verilog file for gain (gain.v) and it is correct per the i=
nstructions in the linked guide, and I built the python and gnuradio hook e=
xactly as the instructions stated to. <br></div><div><br></div><div>Anyone =
have an troubleshooting ideas b/c I am currently at a loss. It did past the=
 test bench they have you build with no issues. <br></div><div><br></div><d=
iv>Regards,</div><div></div><div></div><div>Jon</div><div><br></div><div><b=
r></div><div><br></div></div></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 20, 2019 at 3:21 PM Jo=
nathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"norefer=
rer noreferrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I am having some iss=
ues completing the RFNOC build tutorial on the Ettus E312. The reference do=
cumentation is using an X3xx series radio, and from the final python script=
 it appears to be running the GNR script natively on the host. I built the =
exact script from the KB but when running on the radio it fails stating it =
can&#39;t &quot;import tutorial.&quot; I realized all the files that were i=
nstalled were placed on the host but not cross compiled for the E3xx using =
the SDK and ARM cross compile tool. I tried to complete this task, but unfo=
rtunately the compilation dies here. </div><div><br></div><div>/home/jon/rf=
noc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/stubs.h:=
7:11: fatal error: gnu/stubs-soft.h: No such file or directory<br>=C2=A0# i=
nclude &lt;gnu/stubs-soft.h&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0^~~~~~~~~~~~~~~~~~<br>compilation terminated.</div><div><br></div><div>N=
ow I did find the stubs-soft.h file in the libc6-dev-armel-cross in the apt=
 repo. I installed it and tried to cp the file into the /home/jon/rfnoc/oe/=
sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/ location but i=
t still doesn&#39;t like that. I verified that on my echo $CC that the -mfl=
oat is set to hard as shown here.</div><div><br></div><div>jon@jon-OptiPlex=
-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC<br>arm-oe-linux-gnueabi-gcc -mar=
ch=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon --sysroot=3D/home/jon/rfnoc/oe=
/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi</div><div><br></div><div>So I =
am not sure why the gain module in the tutorial is looking for the soft fil=
e. <br></div><div><br></div><div>If anyone has experience in porting their =
OOT modules over to the E-series of radios I would appreciate the help. <br=
></div><div><br></div><div>Regards,</div><div>Jon<br></div></div></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e3ad250597e17437--


--===============1049302801856198781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1049302801856198781==--

