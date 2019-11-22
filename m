Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A686107A39
	for <lists+usrp-users@lfdr.de>; Fri, 22 Nov 2019 22:50:50 +0100 (CET)
Received: from [::1] (port=59400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYGpD-0007aU-5n; Fri, 22 Nov 2019 16:50:47 -0500
Received: from mail-lj1-f178.google.com ([209.85.208.178]:41199)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iYGp9-0007Vt-IH
 for usrp-users@lists.ettus.com; Fri, 22 Nov 2019 16:50:43 -0500
Received: by mail-lj1-f178.google.com with SMTP id m4so8989350ljj.8
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 13:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P43GgzbyLlmKidk6tX29qfsU+lmH0QoZRZcp7GPkbmI=;
 b=WcHkKVBjQowxO68z0S7eMaXYNDTyiAuZ0wR/3gJ7/M5E+glipoV65F+mMOGtCC0YOV
 z0YZ8E0HJRc5mJCV5rD0D3295tT8DA3HI3S3/CPPwPGavz17lYM2zlvg/3UdBRPPXWQI
 mTdTLDmtTBtHS5SZUlwj6Hqx5+xW0Vv1mBr2RUJ826VfH49nm+uAFPqkqNhUJmoN19h7
 TNHKx59N3ufnl1EzoLH/lEcotDHgpA9vwoyT4noYlfYpOLQ7FhW0Z1G+64kaGNZz4BNb
 zBPyVlDo/oX6v6bOaAB0QYPW7f1MV1AVMp75BdyQqHftba+tXczdgjnR6nl440esZr3T
 ETIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P43GgzbyLlmKidk6tX29qfsU+lmH0QoZRZcp7GPkbmI=;
 b=Pl4t6oggktRFrLXvM5mp6IJwnWfrDUSTgsj89QEh6WPEmuWo7/hezPKmSe9V3OqLK3
 NL4aze+G1VKID5k8EqwN2Wf/HAwkuL0R6WNRNa1hznuH3CBGDD5eMtgKjr3efmlY6Y1D
 tLJ1uMAlTFrFiaVl6SurqEzgAl+ipzytoTy2BTKM8usHNySTtWJaFdOa3yHZrGdKEzV9
 /JC/ifomgx6KzchN0tCtnwSdvXp/Vlid494OGo1Cs2gOwV/6Zmyfo68L9L/6scGx5qLs
 VrNMwTa4p/AsYQwdf0ondAU1swwic6Y+AsoaiuNgyXgLy6hFgfV6X6ev8EN++kNsX2IW
 v9Kg==
X-Gm-Message-State: APjAAAWnMlZ5NPTWJPLRw1uSQxqMBRkx0UOMs9Q8TQjwQ/ZvTbIOKkgg
 xp8ykcCDKbB2lWvGhQHev8dqE7he/SSGoSGZolA=
X-Google-Smtp-Source: APXvYqwS3+j+//XsF9MZrvmPn+uOlTbWSm1t57N201GvbhyPSTLuqBlIHW/QvU3ovnQYfTaADBK0eiuZOnWRo0yJgZc=
X-Received: by 2002:a2e:99c2:: with SMTP id l2mr13667132ljj.145.1574459402001; 
 Fri, 22 Nov 2019 13:50:02 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sLFttRpt+J_PSv1Oa7afRJDHr027vvpA9u2BNME7qmscg@mail.gmail.com>
 <CALY+5sKSb9dq-rQM9nJ8i_2UxpmzPBksNoFChccd0YnHQh1arw@mail.gmail.com>
 <CADRnH236gbeUcGXJLePy+=zGiQLdrMCnMb9QJWna-7GHZOxpmg@mail.gmail.com>
 <CALY+5sJjLEtyF9R2wvA+eiCOQyMpS6=89=HR0J+e-teE+-Du_A@mail.gmail.com>
 <CALY+5sKfTtaUu-qhvbKcVNPke3Lb4zkurwqf7LmDJVmn3vyL+Q@mail.gmail.com>
 <CADRnH2296cr7moDbDLPg1gSt2Q+VT_P_Jin5Vh8r_s=eCZdbwQ@mail.gmail.com>
 <CALY+5sK3D-ndWG-anNPEejrpGkk2vNz2EpfBA6eQ7edjj3q3NA@mail.gmail.com>
 <CADRnH23e-pQNbFNE7C9qPv6a3PpuLY6daaXSAhBkx+VGYo3=+g@mail.gmail.com>
 <CALY+5sKym9oDpbHb48n4DopxMsnxkHKLDsV+zA_XVJ+pPN3jTg@mail.gmail.com>
 <CALY+5s+tWaCqkbO5bL_+iwELhXp9j-hmL11mAvsYWXVp05SqSw@mail.gmail.com>
 <CADRnH227dj+xbh0UMEZXU0zsDmbSoFcX+h3GyoDxD-0Lc5dMWw@mail.gmail.com>
 <CALY+5sLCM-A0w_xLwp3-HYAFeqKjf=bgkJPmx2hsWAP=hBPDNg@mail.gmail.com>
 <CALY+5sJc95BEWpscEVPwdJwDggxihuTFXyLTHjzObTOy67Kwjg@mail.gmail.com>
 <CADRnH23FseTQ_ydJS9u9S0yBedSyVJHn9NMffcubhKAe2OONUg@mail.gmail.com>
In-Reply-To: <CADRnH23FseTQ_ydJS9u9S0yBedSyVJHn9NMffcubhKAe2OONUg@mail.gmail.com>
Date: Fri, 22 Nov 2019 16:49:50 -0500
Message-ID: <CALY+5sJP2j4uio8f-61rqGZ6NT3JfhiY4xVQ8N1YYW_RxsqVew@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8151574877415831098=="
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

--===============8151574877415831098==
Content-Type: multipart/alternative; boundary="0000000000005ea3e00597f665a1"

--0000000000005ea3e00597f665a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I actually just noticed that myself when digging through the python. I set
it to float, and had to make 1 into 1.0, but now the script is happy and it
works.

Thanks for all your help troubleshooting, I really appreciate it. I now
must move on to the task of building a custom block with this experience.

On Fri, Nov 22, 2019 at 3:22 PM EJ Kreinar <ejkreinar@gmail.com> wrote:

> There are definitely a few datatype gotchas with nocscript.
>
> In your flowgraph screenshot I'm seeing a parameter with an "int"type. Is
> that passed directly to your gain block set_arg? You might want to change
> the parameter type to "float" in gnuradio, or cast to float in the entry
> box for your gain block (e.g. `float(intnumber)`).
>
> Either way it should be a float type when you call set_arg
> EJ
>
>
>
> On Fri, Nov 22, 2019, 2:52 PM Jonathan Lockhart <jlockhartrt@gmail.com>
> wrote:
>
>> Well that did do the trick, can't believe I missed that earlier, thanks
>> for spotting that EJ.
>>
>> Now I got a new error. The check for the value of gain is failing, yet
>> the default valued loaded should be 1.0 if you look at the XML file. Her=
e
>> is the error.
>>
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code: GE($gain, 0.0)
>> AND LE($gain, 32767.0)
>> Traceback (most recent call last):
>>   File "rfnoc_myGain_usrp.py", line 223, in <module>
>>     main()
>>   File "rfnoc_myGain_usrp.py", line 212, in main
>>     tb =3D top_block_cls(fpga_path=3Doptions.fpga_path,
>> host_ip_addr=3Doptions.host_ip_addr, rx_digital_gain=3Doptions.rx_digita=
l_gain,
>> rx_freq=3Doptions.rx_freq, rx_gain=3Doptions.rx_gain)
>>   File "rfnoc_myGain_usrp.py", line 117, in __init__
>>     self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
>>   File
>> "/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial/tutorial=
_swig.py",
>> line 315, in set_arg
>>     return _tutorial_swig.gain_sptr_set_arg(self, *args)
>> RuntimeError: RuntimeError: [NocScript] Error: Invalid Gain!
>>
>> So the check message is firing b/c it failed the check, from my
>> understanding, but 1.0 as a double is GE to 0.0 and LE to 32767.0. In
>> running the alternate bit file with the "digital gain" RFNoC block from =
the
>> gr-ettus files, it also gives the same failure.
>>
>>
>> On Fri, Nov 22, 2019 at 2:05 PM Jonathan Lockhart <jlockhartrt@gmail.com=
>
>> wrote:
>>
>>> Well then, ran right over that in my troubleshooting. I am building a
>>> new bit file now to validate the change to the XML as I had moved on to
>>> something else.
>>>
>>> I will reply with the results.
>>>
>>> -Jon
>>>
>>> On Fri, Nov 22, 2019 at 1:12 PM EJ Kreinar <ejkreinar@gmail.com> wrote:
>>>
>>>> Oh!
>>>>
>>>> I suspect you want...
>>>>
>>>> <args>
>>>>   <arg>
>>>>     ...
>>>>   </arg>
>>>> </args>
>>>>
>>>> (Rather than two nested "args")
>>>>
>>>> That ought to do it...
>>>> EJ
>>>>
>>>> On Fri, Nov 22, 2019, 11:55 AM Jonathan Lockhart <jlockhartrt@gmail.co=
m>
>>>> wrote:
>>>>
>>>>> So here is the trace for the gain block, and it certainly is loading
>>>>> the right XML file it seems. =F0=9F=A4=94
>>>>>
>>>>> [DEBUG] [RFNOC] Reading XML file
>>>>> /home/root/newinstall/usr/share/uhd/rfnoc/blocks/gain.xml for NOC ID
>>>>> 0xB7DD64941A952AAC
>>>>> [TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
>>>>> [DEBUG] [RFNOC] Reading XML file
>>>>> /home/root/newinstall/usr/share/uhd/rfnoc/blocks/gain.xml for NOC ID
>>>>> 0xB7DD64941A952AAC
>>>>> [TRACE] [RFNOC] [RFNoC Factory] Using controller key 'gain' and block
>>>>> name 'gain'
>>>>> [DEBUG] [RFNOC] Reading XML file
>>>>> /home/root/newinstall/usr/share/uhd/rfnoc/blocks/gain.xml for NOC ID
>>>>> 0xB7DD64941A952AAC
>>>>> [INFO] [0/gain_0] Initializing block control (NOC ID:
>>>>> 0xB7DD64941A952AAC)
>>>>> [DEBUG] [0/gain_0] Checking compat number for FPGA component
>>>>> `noc_shell': Expecting 5.1, actual: 5.1.
>>>>> [TRACE] [0/gain_0] Adding port definition at xbar/gain_0/ports/in/0:
>>>>> type =3D 'sc16' pkt_size =3D '0' vlen =3D '0'
>>>>> [TRACE] [0/gain_0] Adding port definition at xbar/gain_0/ports/out/0:
>>>>> type =3D 'sc16' pkt_size =3D '0' vlen =3D '0'
>>>>> [DEBUG] [E300] [E300] Setting up dest map for host ep 112 to be strea=
m
>>>>> 3
>>>>>
>>>>> However I don't show it instantiating any of the args. I did vim the
>>>>> file and it appears correct (output below).
>>>>>
>>>>> <?xml version=3D"1.0"?>
>>>>> <!--Default XML file-->
>>>>> <nocblock>
>>>>>   <name>gain</name>
>>>>>   <blockname>gain</blockname>
>>>>>   <ids>
>>>>>     <id revision=3D"0">B7DD64941A952AAC</id>
>>>>>   </ids>
>>>>>   <!-- Registers -->
>>>>>   <registers>
>>>>>     <setreg>
>>>>>       <name>GAIN</name>
>>>>>       <address>128</address>
>>>>>     </setreg>
>>>>>   </registers>
>>>>>   <!-- Args -->
>>>>>   <args>
>>>>>     <args>
>>>>>       <name>gain</name>
>>>>>       <type>double</type>
>>>>>       <value>1.0</value>
>>>>>       <check>GE($gain, 0.0) AND LE($gain, 32767.0)</check>
>>>>>       <check_message>Invalid Gain!</check_message>
>>>>>       <action>
>>>>>         SR_WRITE("GAIN", IROUND($gain))
>>>>>       </action>
>>>>>     </args>
>>>>>   </args>
>>>>>   <!--One input, one output. If this is used, better have all the inf=
o
>>>>> the C++ file.-->
>>>>>   <ports>
>>>>>     <sink>
>>>>>       <name>in0</name>
>>>>>       <type>sc16</type>
>>>>>     </sink>
>>>>>     <source>
>>>>>       <name>out0</name>
>>>>>       <type>sc16</type>
>>>>>     </source>
>>>>>   </ports>
>>>>> </nocblock>
>>>>>
>>>>>
>>>>> Regards,
>>>>> Jon
>>>>>
>>>>>
>>>>>
>>>>> On Fri, Nov 22, 2019 at 10:51 AM Jonathan Lockhart <
>>>>> jlockhartrt@gmail.com> wrote:
>>>>>
>>>>>> NVM, I got it set. I am teasing through the long console output now.
>>>>>> Might of wanted to set the file log instead. Live and learn.
>>>>>>
>>>>>> On Fri, Nov 22, 2019 at 10:20 AM EJ Kreinar <ejkreinar@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> Good progress, agreed it looks like the gain arg isn't getting
>>>>>>> created here...
>>>>>>>
>>>>>>> If you run with log level trace, rfnoc should (might?) indicate the
>>>>>>> xml file it loaded. I'd try to find that xml and confirm it looks l=
ike what
>>>>>>> you expect, with the gain arg entry.
>>>>>>>
>>>>>>> Also, perhaps grep your prefix and share directories on the embedde=
d
>>>>>>> device to search for any other xml files that might match the noc i=
d or
>>>>>>> provide the same "gain" block... I've definitely fought with confli=
cting
>>>>>>> xml definitions before, you might be seeing that here.
>>>>>>>
>>>>>>> EJ
>>>>>>>
>>>>>>> On Fri, Nov 22, 2019, 9:36 AM Jonathan Lockhart <
>>>>>>> jlockhartrt@gmail.com> wrote:
>>>>>>>
>>>>>>>> Hey EJ,
>>>>>>>>
>>>>>>>> Sorry for being slow I had to dig around to set that UHD Log
>>>>>>>> variable, which easy enough it was just a simple export. I then ra=
n
>>>>>>>> uhd_usrp_probe with the --tree and setting the fpga to my bit file=
. Here is
>>>>>>>> the output from the probe.
>>>>>>>>
>>>>>>>> root@ettus-e3xx-sg3:~# uhd_usrp_probe
>>>>>>>> --args=3D"fpga=3D./newinstall/e300.bit" --tree
>>>>>>>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
>>>>>>>> UHD_3.14.1.HEAD-0-g0347a6d8
>>>>>>>> [INFO] [E300] Loading FPGA image: ./newinstall/e300.bit...
>>>>>>>> [INFO] [E300] FPGA image loaded
>>>>>>>> [INFO] [E300] Detecting internal GPS
>>>>>>>> .... [INFO] [E300] GPSDO found
>>>>>>>> [INFO] [E300] Initializing core control (global registers)...
>>>>>>>>
>>>>>>>> [INFO] [E300] Performing register loopback test...
>>>>>>>> [INFO] [E300] Register loopback test passed
>>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>>>>>>> 0x12AD100000000000)
>>>>>>>> [WARNING] [RFNOC] Can't find a block controller for key gain, usin=
g
>>>>>>>> default block controller!
>>>>>>>> [INFO] [0/gain_0] Initializing block control (NOC ID:
>>>>>>>> 0xB7DD64941A952AAC)
>>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>>>>>>> 0xDDC0000000000000)
>>>>>>>> [WARNING] [RFNOC] Can't find a block controller for key FFT, using
>>>>>>>> default block controller!
>>>>>>>> [INFO] [0/FFT_0] Initializing block control (NOC ID:
>>>>>>>> 0xFF70000000000000)
>>>>>>>> /
>>>>>>>> /name
>>>>>>>> /mboards
>>>>>>>> /mboards/0
>>>>>>>> /mboards/0/name
>>>>>>>> /mboards/0/codename
>>>>>>>> /mboards/0/fpga_version
>>>>>>>> /mboards/0/fpga_version_hash
>>>>>>>> /mboards/0/clock_source
>>>>>>>> /mboards/0/clock_source/value
>>>>>>>> /mboards/0/clock_source/options
>>>>>>>> /mboards/0/sensors
>>>>>>>> /mboards/0/sensors/temp
>>>>>>>> /mboards/0/sensors/ref_locked
>>>>>>>> /mboards/0/sensors/gps_locked
>>>>>>>> /mboards/0/sensors/gps_time
>>>>>>>> /mboards/0/sensors/gps_position
>>>>>>>> /mboards/0/sensors/gps_gpgga
>>>>>>>> /mboards/0/sensors/gps_gprmc
>>>>>>>> /mboards/0/eeprom
>>>>>>>> /mboards/0/dboards
>>>>>>>> /mboards/0/dboards/A
>>>>>>>> /mboards/0/dboards/A/rx_eeprom
>>>>>>>> /mboards/0/dboards/A/tx_eeprom
>>>>>>>> /mboards/0/dboards/A/gdb_eeprom
>>>>>>>> /mboards/0/dboards/A/rx_frontends
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/name
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/sensors
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/sensors/temp
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/sensors/rssi
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/sensors/lo_locked
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gains
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gains/PGA
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gains/PGA/range
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gains/PGA/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/connection
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/enabled
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/use_lo_offset
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/bandwidth
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/bandwidth/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/bandwidth/range
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/freq
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/freq/range
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/freq/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/dc_offset
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/dc_offset/enable
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/iq_balance
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/iq_balance/enable
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gain
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gain/agc
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/enable
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/mode
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/options
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/DEC_3
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/DEC_3/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_1/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_2/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_3/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/antenna
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/antenna/options
>>>>>>>> /mboards/0/dboards/A/rx_frontends/A/antenna/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/name
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/sensors
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/sensors/temp
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/sensors/rssi
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/sensors/lo_locked
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gains
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gains/PGA
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gains/PGA/range
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gains/PGA/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/connection
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/enabled
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/use_lo_offset
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/bandwidth
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/bandwidth/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/bandwidth/range
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/freq
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/freq/range
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/freq/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/dc_offset
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/dc_offset/enable
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/iq_balance
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/iq_balance/enable
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gain
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gain/agc
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/enable
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/mode
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/mode/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/mode/options
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/DEC_3
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/DEC_3/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/FIR_1
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/FIR_1/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_1
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_1/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_2
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_2/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_3
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_3/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_BB
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_BB/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA/value
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/antenna
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/antenna/options
>>>>>>>> /mboards/0/dboards/A/rx_frontends/B/antenna/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/name
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/sensors
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/sensors/temp
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/sensors/lo_locked
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/gains
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/gains/PGA
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/gains/PGA/range
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/gains/PGA/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/connection
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/enabled
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/use_lo_offset
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/bandwidth
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/bandwidth/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/bandwidth/range
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/freq
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/freq/range
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/freq/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/FIR_1
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/FIR_1/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_1
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_1/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_2
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_2/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_3
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_3/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/INT_3
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/INT_3/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_BB
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_BB/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_SECONDARY
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_SECONDARY/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/antenna
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/antenna/options
>>>>>>>> /mboards/0/dboards/A/tx_frontends/A/antenna/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/name
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/sensors
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/sensors/temp
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/sensors/lo_locked
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/gains
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/gains/PGA
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/gains/PGA/range
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/gains/PGA/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/connection
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/enabled
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/use_lo_offset
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/bandwidth
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/bandwidth/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/bandwidth/range
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/freq
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/freq/range
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/freq/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/FIR_1
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/FIR_1/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_1
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_1/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_2
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_2/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_3
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_3/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/INT_3
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/INT_3/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_BB
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_BB/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY/value
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/antenna
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/antenna/options
>>>>>>>> /mboards/0/dboards/A/tx_frontends/B/antenna/value
>>>>>>>> /mboards/0/global_regs
>>>>>>>> /mboards/0/global_regs/misc
>>>>>>>> /mboards/0/global_regs/pll
>>>>>>>> /mboards/0/tick_rate
>>>>>>>> /mboards/0/xbar
>>>>>>>> /mboards/0/xbar/Radio_0
>>>>>>>> /mboards/0/xbar/Radio_0/noc_id
>>>>>>>> /mboards/0/xbar/Radio_0/input_buffer_size
>>>>>>>> /mboards/0/xbar/Radio_0/input_buffer_size/0
>>>>>>>> /mboards/0/xbar/Radio_0/input_buffer_size/1
>>>>>>>> /mboards/0/xbar/Radio_0/mtu
>>>>>>>> /mboards/0/xbar/Radio_0/mtu/0
>>>>>>>> /mboards/0/xbar/Radio_0/mtu/1
>>>>>>>> /mboards/0/xbar/Radio_0/ports
>>>>>>>> /mboards/0/xbar/Radio_0/ports/in
>>>>>>>> /mboards/0/xbar/Radio_0/ports/in/0
>>>>>>>> /mboards/0/xbar/Radio_0/ports/in/1
>>>>>>>> /mboards/0/xbar/Radio_0/ports/out
>>>>>>>> /mboards/0/xbar/Radio_0/ports/out/0
>>>>>>>> /mboards/0/xbar/Radio_0/ports/out/1
>>>>>>>> /mboards/0/xbar/Radio_0/args
>>>>>>>> /mboards/0/xbar/Radio_0/args/0
>>>>>>>> /mboards/0/xbar/Radio_0/args/0/spp
>>>>>>>> /mboards/0/xbar/Radio_0/args/0/spp/type
>>>>>>>> /mboards/0/xbar/Radio_0/args/0/spp/value
>>>>>>>> /mboards/0/xbar/Radio_0/args/1
>>>>>>>> /mboards/0/xbar/gain_0
>>>>>>>> /mboards/0/xbar/gain_0/noc_id
>>>>>>>> /mboards/0/xbar/gain_0/input_buffer_size
>>>>>>>> /mboards/0/xbar/gain_0/input_buffer_size/0
>>>>>>>> /mboards/0/xbar/gain_0/mtu
>>>>>>>> /mboards/0/xbar/gain_0/mtu/0
>>>>>>>> /mboards/0/xbar/gain_0/registers
>>>>>>>> /mboards/0/xbar/gain_0/registers/sr
>>>>>>>> /mboards/0/xbar/gain_0/registers/sr/Gain
>>>>>>>> /mboards/0/xbar/gain_0/ports
>>>>>>>> /mboards/0/xbar/gain_0/ports/in
>>>>>>>> /mboards/0/xbar/gain_0/ports/in/0
>>>>>>>> /mboards/0/xbar/gain_0/ports/out
>>>>>>>> /mboards/0/xbar/gain_0/ports/out/0
>>>>>>>> /mboards/0/xbar/gain_0/args
>>>>>>>> /mboards/0/xbar/gain_0/args/0
>>>>>>>> /mboards/0/xbar/DDC_0
>>>>>>>> /mboards/0/xbar/DDC_0/noc_id
>>>>>>>> /mboards/0/xbar/DDC_0/input_buffer_size
>>>>>>>> /mboards/0/xbar/DDC_0/input_buffer_size/0
>>>>>>>> /mboards/0/xbar/DDC_0/input_buffer_size/1
>>>>>>>> /mboards/0/xbar/DDC_0/mtu
>>>>>>>> /mboards/0/xbar/DDC_0/mtu/0
>>>>>>>> /mboards/0/xbar/DDC_0/mtu/1
>>>>>>>> /mboards/0/xbar/DDC_0/registers
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/N
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/M
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/CONFIG
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/DDS_FREQ
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/SCALE_IQ
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/DECIM_WORD
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/MODE
>>>>>>>> /mboards/0/xbar/DDC_0/registers/sr/RELOAD
>>>>>>>> /mboards/0/xbar/DDC_0/ports
>>>>>>>> /mboards/0/xbar/DDC_0/ports/in
>>>>>>>> /mboards/0/xbar/DDC_0/ports/in/0
>>>>>>>> /mboards/0/xbar/DDC_0/ports/in/1
>>>>>>>> /mboards/0/xbar/DDC_0/ports/out
>>>>>>>> /mboards/0/xbar/DDC_0/ports/out/0
>>>>>>>> /mboards/0/xbar/DDC_0/ports/out/1
>>>>>>>> /mboards/0/xbar/DDC_0/args
>>>>>>>> /mboards/0/xbar/DDC_0/args/0
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/freq
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/freq/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/freq/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/input_rate
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/input_rate/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/input_rate/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/output_rate
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/output_rate/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/output_rate/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/fullscale
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/fullscale/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/fullscale/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/scalar_correction
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/scalar_correction/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/0/scalar_correction/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/1
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/freq
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/freq/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/freq/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/input_rate
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/input_rate/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/input_rate/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/output_rate
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/output_rate/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/output_rate/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/fullscale
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/fullscale/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/fullscale/value
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/scalar_correction
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/scalar_correction/type
>>>>>>>> /mboards/0/xbar/DDC_0/args/1/scalar_correction/value
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0/rate
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0/rate/value
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0/rate/range
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0/freq
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0/freq/value
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/0/freq/range
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1/rate
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1/rate/value
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1/rate/range
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1/freq
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1/freq/value
>>>>>>>> /mboards/0/xbar/DDC_0/legacy_api/1/freq/range
>>>>>>>> /mboards/0/xbar/FFT_0
>>>>>>>> /mboards/0/xbar/FFT_0/noc_id
>>>>>>>> /mboards/0/xbar/FFT_0/input_buffer_size
>>>>>>>> /mboards/0/xbar/FFT_0/input_buffer_size/0
>>>>>>>> /mboards/0/xbar/FFT_0/mtu
>>>>>>>> /mboards/0/xbar/FFT_0/mtu/0
>>>>>>>> /mboards/0/xbar/FFT_0/registers
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr/FFT_RESET
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr/FFT_SIZE_LOG2
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr/MAGNITUDE_OUT
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr/FFT_DIRECTION
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr/FFT_SCALING
>>>>>>>> /mboards/0/xbar/FFT_0/registers/sr/FFT_SHIFT_CONFIG
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_RESET
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb/RB_MAGNITUDE_OUT
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SIZE_LOG2
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_DIRECTION
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SCALING
>>>>>>>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SHIFT_CONFIG
>>>>>>>> /mboards/0/xbar/FFT_0/ports
>>>>>>>> /mboards/0/xbar/FFT_0/ports/in
>>>>>>>> /mboards/0/xbar/FFT_0/ports/in/0
>>>>>>>> /mboards/0/xbar/FFT_0/ports/out
>>>>>>>> /mboards/0/xbar/FFT_0/ports/out/0
>>>>>>>> /mboards/0/xbar/FFT_0/args
>>>>>>>> /mboards/0/xbar/FFT_0/args/0
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/spp
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/spp/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/spp/value
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/shift
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/shift/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/shift/value
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/direction
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/direction/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/direction/value
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/scaling
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/scaling/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/scaling/value
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/otype
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/otype/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/otype/value
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/reset
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/reset/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/reset/value
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/magnitude_out
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/magnitude_out/type
>>>>>>>> /mboards/0/xbar/FFT_0/args/0/magnitude_out/value
>>>>>>>> /mboards/0/time
>>>>>>>> /mboards/0/time/now
>>>>>>>> /mboards/0/time/pps
>>>>>>>> /mboards/0/time/cmd
>>>>>>>> /mboards/0/time_source
>>>>>>>> /mboards/0/time_source/value
>>>>>>>> /mboards/0/time_source/options
>>>>>>>> /mboards/0/rx_codecs
>>>>>>>> /mboards/0/rx_codecs/A
>>>>>>>> /mboards/0/rx_codecs/A/name
>>>>>>>> /mboards/0/rx_codecs/A/gains
>>>>>>>> /mboards/0/tx_codecs
>>>>>>>> /mboards/0/tx_codecs/A
>>>>>>>> /mboards/0/tx_codecs/A/name
>>>>>>>> /mboards/0/tx_codecs/A/gains
>>>>>>>> /mboards/0/gpio
>>>>>>>> /mboards/0/gpio/INT0
>>>>>>>> /mboards/0/gpio/INT0/SRC
>>>>>>>> /mboards/0/gpio/INT0/CTRL
>>>>>>>> /mboards/0/gpio/INT0/DDR
>>>>>>>> /mboards/0/gpio/INT0/OUT
>>>>>>>> /mboards/0/gpio/INT0/ATR_0X
>>>>>>>> /mboards/0/gpio/INT0/ATR_RX
>>>>>>>> /mboards/0/gpio/INT0/ATR_TX
>>>>>>>> /mboards/0/gpio/INT0/ATR_XX
>>>>>>>> /mboards/0/gpio/INT0/READBACK
>>>>>>>> /mboards/0/rx_dsps
>>>>>>>> /mboards/0/rx_dsps/0
>>>>>>>> /mboards/0/rx_dsps/0/stream_cmd
>>>>>>>> /mboards/0/rx_dsps/0/freq
>>>>>>>> /mboards/0/rx_dsps/0/freq/value
>>>>>>>> /mboards/0/rx_dsps/0/freq/range
>>>>>>>> /mboards/0/rx_dsps/0/rate
>>>>>>>> /mboards/0/rx_dsps/0/rate/value
>>>>>>>> /mboards/0/rx_dsps/1
>>>>>>>> /mboards/0/rx_dsps/1/stream_cmd
>>>>>>>> /mboards/0/rx_dsps/1/freq
>>>>>>>> /mboards/0/rx_dsps/1/freq/value
>>>>>>>> /mboards/0/rx_dsps/1/freq/range
>>>>>>>> /mboards/0/rx_dsps/1/rate
>>>>>>>> /mboards/0/rx_dsps/1/rate/value
>>>>>>>> /mboards/0/tx_dsps
>>>>>>>> /mboards/0/tx_dsps/0
>>>>>>>> /mboards/0/tx_dsps/0/freq
>>>>>>>> /mboards/0/tx_dsps/0/freq/value
>>>>>>>> /mboards/0/tx_dsps/0/freq/range
>>>>>>>> /mboards/0/tx_dsps/0/rate
>>>>>>>> /mboards/0/tx_dsps/0/rate/value
>>>>>>>> /mboards/0/tx_dsps/1
>>>>>>>> /mboards/0/tx_dsps/1/freq
>>>>>>>> /mboards/0/tx_dsps/1/freq/value
>>>>>>>> /mboards/0/tx_dsps/1/freq/range
>>>>>>>> /mboards/0/tx_dsps/1/rate
>>>>>>>> /mboards/0/tx_dsps/1/rate/value
>>>>>>>> /mboards/0/rx_subdev_spec
>>>>>>>> /mboards/0/tx_subdev_spec
>>>>>>>> [INFO] [E300] Loading FPGA image:
>>>>>>>> /home/root/newinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3=
.bit...
>>>>>>>> [INFO] [E300] FPGA image loaded
>>>>>>>>
>>>>>>>> The failure output I got from running the python script shows that
>>>>>>>> it can't find "/mboards/0/xbar/gain_0/args/0/gain/value" and when =
I look at
>>>>>>>> the tree, there is no value instantiated by the probe. It only loo=
ks like
>>>>>>>> the furthest that the probe goes down in the mboards is
>>>>>>>> "/mboards/0/xbar/gain_0/args/0". I am assuming its something in th=
e
>>>>>>>> arguments file not getting loaded, but everything appears ok to me=
 on
>>>>>>>> glance in that XML file.
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Jon
>>>>>>>>
>>>>>>>> On Thu, Nov 21, 2019 at 4:49 PM EJ Kreinar <ejkreinar@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Okay, great...
>>>>>>>>>
>>>>>>>>> You might want to try increasing the log level. Export
>>>>>>>>> UHD_LOG_CONSOLE_LEVEL=3Dtrace or debug and try to make sure the c=
orrect xml
>>>>>>>>> file is getting applied to the block correctly.
>>>>>>>>>
>>>>>>>>> There's also something like a "--tree" parameter in the
>>>>>>>>> uhd_usrp_probe so try running the probe with the tree option to p=
rint out
>>>>>>>>> the device tree and look for the arguments assigned to your new b=
lock.
>>>>>>>>>
>>>>>>>>> Let's see if any of that helps figure out what's going on...
>>>>>>>>> EJ
>>>>>>>>>
>>>>>>>>> On Thu, Nov 21, 2019, 4:01 PM Jonathan Lockhart <
>>>>>>>>> jlockhartrt@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> Also, when I compiled from the OOT directory for ARM, I used thi=
s
>>>>>>>>>> command, which I pieced together from the RFNoC build guide, and=
 the
>>>>>>>>>> release-4 guide for cross-compiling gr-ettus.
>>>>>>>>>>
>>>>>>>>>> cmake
>>>>>>>>>> -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/o=
e-sdk_cross.cmake
>>>>>>>>>> -DCMAKE_INSTALL_PREFIX=3D/usr
>>>>>>>>>> -DUHD_FPGA_DIR=3D"/home/jon/rfnoc/src/uhd/fpga-src/" ../
>>>>>>>>>>
>>>>>>>>>> Regards,
>>>>>>>>>> Jon
>>>>>>>>>>
>>>>>>>>>> On Thu, Nov 21, 2019 at 3:48 PM Jonathan Lockhart <
>>>>>>>>>> jlockhartrt@gmail.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Greetings EJ,
>>>>>>>>>>>
>>>>>>>>>>> So, from the tutorial, they have you edit the gain.xml file, an=
d
>>>>>>>>>>> this is what I have for it.
>>>>>>>>>>>
>>>>>>>>>>> <?xml version=3D"1.0"?>
>>>>>>>>>>> <!--Default XML file-->
>>>>>>>>>>> <nocblock>
>>>>>>>>>>>   <name>gain</name>
>>>>>>>>>>>   <blockname>gain</blockname>
>>>>>>>>>>>   <ids>
>>>>>>>>>>>     <id revision=3D"0">B7DD64941A952AAC</id>
>>>>>>>>>>>   </ids>
>>>>>>>>>>>   <!-- Registers -->
>>>>>>>>>>>   <registers>
>>>>>>>>>>>     <setreg>
>>>>>>>>>>>       <name>Gain</name>
>>>>>>>>>>>       <address>128</address>
>>>>>>>>>>>     </setreg>
>>>>>>>>>>>   </registers>
>>>>>>>>>>>   <!-- Args -->
>>>>>>>>>>>   <args>
>>>>>>>>>>>     <args>
>>>>>>>>>>>       <name>gain</name>
>>>>>>>>>>>       <type>double</type>
>>>>>>>>>>>       <value>1.0</value>
>>>>>>>>>>>       <check>GE($gain, 0.0) AND LE($gain, 32767.0)</check>
>>>>>>>>>>>       <check_message>Invalid Gain!</check_message>
>>>>>>>>>>>       <action>
>>>>>>>>>>>         SR_WRITE("GAIN", IROUND($gain))
>>>>>>>>>>>       </action>
>>>>>>>>>>>     </args>
>>>>>>>>>>>   </args>
>>>>>>>>>>>   <!--One input, one output. If this is used, better have all
>>>>>>>>>>> the info the C++ file.-->
>>>>>>>>>>>   <ports>
>>>>>>>>>>>     <sink>
>>>>>>>>>>>       <name>in0</name>
>>>>>>>>>>>       <type>sc16</name>
>>>>>>>>>>>     </sink>
>>>>>>>>>>>     <source>
>>>>>>>>>>>       <name>out0</name>
>>>>>>>>>>>       <type>sc16</name>
>>>>>>>>>>>     </source>
>>>>>>>>>>>   </ports>
>>>>>>>>>>> </nocblock>
>>>>>>>>>>>
>>>>>>>>>>> There is an args value and it is declared as gain.
>>>>>>>>>>>
>>>>>>>>>>> So from there, I followed your second suggestion and tried to
>>>>>>>>>>> find where it was installed when I did the cross compile. It wa=
s not placed
>>>>>>>>>>> in the "GRC_BLOCKS_PATH" of "/share/gnuradio/grc/blocks" like t=
he default
>>>>>>>>>>> RFNoC blocks. It was instead placed in "/share/uhd/rfnoc/bocks"=
 so I added
>>>>>>>>>>> that to the setup.env file, included below.
>>>>>>>>>>>
>>>>>>>>>>> LOCALPREFIX=3D~/newinstall/usr
>>>>>>>>>>> export PATH=3D$LOCALPREFIX/bin:$PATH
>>>>>>>>>>> export LD_LOAD_LIBRARY=3D$LOCALPREFIX/lib:$LD_LOAD_LIBRARY
>>>>>>>>>>> export LD_LIBRARY_PATH=3D$LOCALPREFIX/lib:$LD_LIBRARY_PATH
>>>>>>>>>>> export
>>>>>>>>>>> PYTHONPATH=3D$LOCALPREFIX/lib/python2.7/site-packages:$PYTHONPA=
TH
>>>>>>>>>>> export
>>>>>>>>>>> PKG_CONFIG_PATH=3D$LOCALPREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
>>>>>>>>>>> export
>>>>>>>>>>> GRC_BLOCKS_PATH=3D$LOCALPREFIX/share/gnuradio/grc/blocks:$GRC_B=
LOCKS_PATH
>>>>>>>>>>> export UHD_RFNOC_DIR=3D$LOCALPREFIX/share/uhd/rfnoc/
>>>>>>>>>>> export UHD_IMAGES_DIR=3D$LOCALPREFIX/share/uhd/images
>>>>>>>>>>> export
>>>>>>>>>>> GRC_BLOCKS_PATH=3D$LOCALPREFIX/share/uhd/rfnoc/blocks:$GRC_BLOC=
KS_PATH
>>>>>>>>>>>
>>>>>>>>>>> Unfortunately, after re-sourcing the setup.env, I still get the
>>>>>>>>>>> same message.
>>>>>>>>>>>
>>>>>>>>>>>   File "rfnoc_myGain_usrp.py", line 223, in <module>
>>>>>>>>>>>     main()
>>>>>>>>>>>   File "rfnoc_myGain_usrp.py", line 212, in main
>>>>>>>>>>>     tb =3D top_block_cls(fpga_path=3Doptions.fpga_path,
>>>>>>>>>>> rx_gain=3Doptions.rx_gain, rx_digital_gain=3Doptions.rx_digital=
_gain,
>>>>>>>>>>> rx_freq=3Doptions.rx_freq, host_ip_addr=3Doptions.host_ip_addr)
>>>>>>>>>>>   File "rfnoc_myGain_usrp.py", line 117, in __init__
>>>>>>>>>>>     self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
>>>>>>>>>>>   File
>>>>>>>>>>> "/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial=
/tutorial_swig.py",
>>>>>>>>>>> line 315, in set_arg
>>>>>>>>>>>     return _tutorial_swig.gain_sptr_set_arg(self, *args)
>>>>>>>>>>> RuntimeError: LookupError: Path not found in tree:
>>>>>>>>>>> /mboards/0/xbar/gain_0/args/0/gain/value
>>>>>>>>>>>
>>>>>>>>>>> I looked at some of your examples (which have been very helpful
>>>>>>>>>>> to get me this far) from what I believe is your github someone =
linked me.
>>>>>>>>>>> Everything appears to match what it should, for what gain is tr=
ying to
>>>>>>>>>>> accomplish.
>>>>>>>>>>>
>>>>>>>>>>> Regards,
>>>>>>>>>>> Jon
>>>>>>>>>>>
>>>>>>>>>>> On Thu, Nov 21, 2019 at 3:27 PM EJ Kreinar <ejkreinar@gmail.com=
>
>>>>>>>>>>> wrote:
>>>>>>>>>>>
>>>>>>>>>>>> Hi Jon,
>>>>>>>>>>>>
>>>>>>>>>>>> The rfnoc "nocscript" xml definition can create arguments and
>>>>>>>>>>>> attach to the device tree like you are trying to set there (it=
's not
>>>>>>>>>>>> compiled directly, but rather created dynamically from the xml=
 definition)
>>>>>>>>>>>>
>>>>>>>>>>>> Recommended debugging...
>>>>>>>>>>>> 1. Check your OOT gain block xml (in rfnoc/blocks) and make
>>>>>>>>>>>> sure it has a "gain" field in the "args" list. You'll also wan=
t to make
>>>>>>>>>>>> sure it writes your desired register, but I don't think you're=
 even getting
>>>>>>>>>>>> that far
>>>>>>>>>>>> 2. Make sure the block xml is installed on the e310 embedded
>>>>>>>>>>>> prefix and is found at run time during uhd_usrp_probe and when=
 running your
>>>>>>>>>>>> application. If it's not in the right place or not attaching t=
o your block
>>>>>>>>>>>> then it won't create the gain argument
>>>>>>>>>>>>
>>>>>>>>>>>> I'm guessing it's one of those two possibilities...
>>>>>>>>>>>> EJ
>>>>>>>>>>>>
>>>>>>>>>>>> On Thu, Nov 21, 2019, 3:19 PM Jonathan Lockhart via USRP-users=
 <
>>>>>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>> Greetings,
>>>>>>>>>>>>>
>>>>>>>>>>>>> I was able to get the ARM cross compile working. I removed th=
e
>>>>>>>>>>>>> build directory and re-sourced the dev environment and then t=
he
>>>>>>>>>>>>> cross-compile used the -mfloar=3Dhard flag. Not sure what cau=
sed the issue
>>>>>>>>>>>>> earlier and why it wasn't picking it up.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Now I have a different issue. So I have completed this guide:
>>>>>>>>>>>>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>>>>>>>>>>>>
>>>>>>>>>>>>> I modified the GNURadio just a bit so that the output from
>>>>>>>>>>>>> gain was placed on a ZMQ push, and the graphics were on the h=
ost to graph
>>>>>>>>>>>>> the signal (seen in the screenshots below).
>>>>>>>>>>>>>
>>>>>>>>>>>>> [image: Screenshot from 2019-11-21 15-06-33.jpg]
>>>>>>>>>>>>>
>>>>>>>>>>>>> [image: Screenshot from 2019-11-21 15-010-44.jpg]
>>>>>>>>>>>>>
>>>>>>>>>>>>> However, when I run the top file for the USRP, I am running
>>>>>>>>>>>>> into this error.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Traceback (most recent call last):
>>>>>>>>>>>>>   File "rfnoc_myGain_usrp.py", line 223, in <module>
>>>>>>>>>>>>>     main()
>>>>>>>>>>>>>   File "rfnoc_myGain_usrp.py", line 212, in main
>>>>>>>>>>>>>     tb =3D top_block_cls(fpga_path=3Doptions.fpga_path,
>>>>>>>>>>>>> rx_gain=3Doptions.rx_gain, rx_digital_gain=3Doptions.rx_digit=
al_gain,
>>>>>>>>>>>>> rx_freq=3Doptions.rx_freq, host_ip_addr=3Doptions.host_ip_add=
r)
>>>>>>>>>>>>>   File "rfnoc_myGain_usrp.py", line 117, in __init__
>>>>>>>>>>>>>     self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
>>>>>>>>>>>>>   File
>>>>>>>>>>>>> "/home/root/newinstall/usr/lib/python2.7/site-packages/tutori=
al/tutorial_swig.py",
>>>>>>>>>>>>> line 315, in set_arg
>>>>>>>>>>>>>     return _tutorial_swig.gain_sptr_set_arg(self, *args)
>>>>>>>>>>>>> RuntimeError: LookupError: Path not found in tree:
>>>>>>>>>>>>> /mboards/0/xbar/gain_0/args/0/gain/value
>>>>>>>>>>>>>
>>>>>>>>>>>>> No where else in building GNURadio scripts and .bit files doe=
s
>>>>>>>>>>>>> this "/mboards" arise, and I have looked through my verilog f=
ile for gain
>>>>>>>>>>>>> (gain.v) and it is correct per the instructions in the linked=
 guide, and I
>>>>>>>>>>>>> built the python and gnuradio hook exactly as the instruction=
s stated to.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Anyone have an troubleshooting ideas b/c I am currently at a
>>>>>>>>>>>>> loss. It did past the test bench they have you build with no =
issues.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Regards,
>>>>>>>>>>>>> Jon
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> On Wed, Nov 20, 2019 at 3:21 PM Jonathan Lockhart <
>>>>>>>>>>>>> jlockhartrt@gmail.com> wrote:
>>>>>>>>>>>>>
>>>>>>>>>>>>>> Greetings,
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> I am having some issues completing the RFNOC build tutorial
>>>>>>>>>>>>>> on the Ettus E312. The reference documentation is using an X=
3xx series
>>>>>>>>>>>>>> radio, and from the final python script it appears to be run=
ning the GNR
>>>>>>>>>>>>>> script natively on the host. I built the exact script from t=
he KB but when
>>>>>>>>>>>>>> running on the radio it fails stating it can't "import tutor=
ial." I
>>>>>>>>>>>>>> realized all the files that were installed were placed on th=
e host but not
>>>>>>>>>>>>>> cross compiled for the E3xx using the SDK and ARM cross comp=
ile tool. I
>>>>>>>>>>>>>> tried to complete this task, but unfortunately the compilati=
on dies here.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnuea=
bi/usr/include/gnu/stubs.h:7:11:
>>>>>>>>>>>>>> fatal error: gnu/stubs-soft.h: No such file or directory
>>>>>>>>>>>>>>  # include <gnu/stubs-soft.h>
>>>>>>>>>>>>>>            ^~~~~~~~~~~~~~~~~~
>>>>>>>>>>>>>> compilation terminated.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Now I did find the stubs-soft.h file in the
>>>>>>>>>>>>>> libc6-dev-armel-cross in the apt repo. I installed it and tr=
ied to cp the
>>>>>>>>>>>>>> file into the
>>>>>>>>>>>>>> /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnuea=
bi/usr/include/gnu/
>>>>>>>>>>>>>> location but it still doesn't like that. I verified that on =
my echo $CC
>>>>>>>>>>>>>> that the -mfloat is set to hard as shown here.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> jon@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC
>>>>>>>>>>>>>> arm-oe-linux-gnueabi-gcc -march=3Darmv7-a -mfloat-abi=3Dhard
>>>>>>>>>>>>>> -mfpu=3Dneon
>>>>>>>>>>>>>> --sysroot=3D/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe=
-linux-gnueabi
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> So I am not sure why the gain module in the tutorial is
>>>>>>>>>>>>>> looking for the soft file.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> If anyone has experience in porting their OOT modules over t=
o
>>>>>>>>>>>>>> the E-series of radios I would appreciate the help.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Regards,
>>>>>>>>>>>>>> Jon
>>>>>>>>>>>>>>
>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>>> USRP-users@lists.ettus.com
>>>>>>>>>>>>>
>>>>>>>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com
>>>>>>>>>>>>>
>>>>>>>>>>>>

--0000000000005ea3e00597f665a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I actually just noticed that myself when digging thro=
ugh the python. I set it to float, and had to make 1 into 1.0, but now the =
script is happy and it works.</div><div><br></div><div>Thanks for all your =
help troubleshooting, I really appreciate it. I now must move on to the tas=
k of building a custom block with this experience. <br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22=
, 2019 at 3:22 PM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com">ejk=
reinar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"auto">There are definitely a few datatype gotch=
as with nocscript.=C2=A0=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto"=
>In your flowgraph screenshot I&#39;m seeing a parameter with an &quot;int&=
quot;type. Is that passed directly to your gain block set_arg? You might wa=
nt to change the parameter type to &quot;float&quot; in gnuradio, or cast t=
o float in the entry box for your gain block (e.g. `float(intnumber)`).</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Either way it should be a f=
loat type when you call set_arg</div><div dir=3D"auto">EJ</div><div dir=3D"=
auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri,=
 Nov 22, 2019, 2:52 PM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@=
gmail.com" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Wel=
l that did do the trick, can&#39;t believe I missed that earlier, thanks fo=
r spotting that EJ.</div><div><br></div><div>Now I got a new error. The che=
ck for the value of gain is failing, yet the default valued loaded should b=
e 1.0 if you look at the XML file. Here is the error. <br></div><div><br></=
div><div>[TRACE] [RFNOC] [NocScript] Executing and asserting code: GE($gain=
, 0.0) AND LE($gain, 32767.0)<br>Traceback (most recent call last):<br>=C2=
=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 223, in &lt;module&gt;<br>=
=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line =
212, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fpga_path=3Doptions.fpga=
_path, host_ip_addr=3Doptions.host_ip_addr, rx_digital_gain=3Doptions.rx_di=
gital_gain, rx_freq=3Doptions.rx_freq, rx_gain=3Doptions.rx_gain)<br>=C2=A0=
 File &quot;rfnoc_myGain_usrp.py&quot;, line 117, in __init__<br>=C2=A0 =C2=
=A0 self.tutorial_gain_0.set_arg(&quot;gain&quot;, rx_digital_gain)<br>=C2=
=A0 File &quot;/home/root/newinstall/usr/lib/python2.7/site-packages/tutori=
al/tutorial_swig.py&quot;, line 315, in set_arg<br>=C2=A0 =C2=A0 return _tu=
torial_swig.gain_sptr_set_arg(self, *args)<br>RuntimeError: RuntimeError: [=
NocScript] Error: Invalid Gain!</div><div><br></div><div>So the check messa=
ge is firing b/c it failed the check, from my understanding, but 1.0 as a d=
ouble is GE to 0.0 and LE to 32767.0. In running the alternate bit file wit=
h the &quot;digital gain&quot; RFNoC block from the gr-ettus files, it also=
 gives the same failure.</div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22, 2019 at 2:05 P=
M Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Well =
then, ran right over that in my troubleshooting. I am building a new bit fi=
le now to validate the change to the XML as I had moved on to something els=
e. <br></div><div><br></div><div>I will reply with the results. <br></div><=
div><br></div><div>-Jon<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22, 2019 at 1:12 PM EJ Kreinar=
 &lt;<a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer" target=3D"_b=
lank">ejkreinar@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto">Oh!<div dir=3D"auto"><br></div><=
div dir=3D"auto">I suspect you want...</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">&lt;args&gt;</div><div dir=3D"auto">=C2=A0 &lt;arg&gt;</div>=
<div dir=3D"auto">=C2=A0 =C2=A0 ...</div><div dir=3D"auto">=C2=A0 &lt;/arg&=
gt;</div><div dir=3D"auto">&lt;/args&gt;</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">(Rather than two nested &quot;args&quot;)</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">That ought to do it...</div><div dir=3D"=
auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 22, 2019, 11:55 AM Jonathan Lockhart &lt;<a hre=
f=3D"mailto:jlockhartrt@gmail.com" rel=3D"noreferrer" target=3D"_blank">jlo=
ckhartrt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>So here is the trace for the gain b=
lock, and it certainly is loading the right XML file it seems. =F0=9F=A4=94=
</div><div><br></div><div>[DEBUG] [RFNOC] Reading XML file /home/root/newin=
stall/usr/share/uhd/rfnoc/blocks/gain.xml for NOC ID 0xB7DD64941A952AAC<br>=
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()<br>[DEBUG] [RFNOC] =
Reading XML file /home/root/newinstall/usr/share/uhd/rfnoc/blocks/gain.xml =
for NOC ID 0xB7DD64941A952AAC<br>[TRACE] [RFNOC] [RFNoC Factory] Using cont=
roller key &#39;gain&#39; and block name &#39;gain&#39;<br>[DEBUG] [RFNOC] =
Reading XML file /home/root/newinstall/usr/share/uhd/rfnoc/blocks/gain.xml =
for NOC ID 0xB7DD64941A952AAC<br>[INFO] [0/gain_0] Initializing block contr=
ol (NOC ID: 0xB7DD64941A952AAC)<br>[DEBUG] [0/gain_0] Checking compat numbe=
r for FPGA component `noc_shell&#39;: Expecting 5.1, actual: 5.1.<br>[TRACE=
] [0/gain_0] Adding port definition at xbar/gain_0/ports/in/0: type =3D &#3=
9;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>[TRACE] [0/gai=
n_0] Adding port definition at xbar/gain_0/ports/out/0: type =3D &#39;sc16&=
#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>[DEBUG] [E300] [E300]=
 Setting up dest map for host ep 112 to be stream 3<br></div><div><br></div=
><div>However I don&#39;t show it instantiating any of the args. I did vim =
the file and it appears correct (output below). <br></div><div><br></div><d=
iv>&lt;?xml version=3D&quot;1.0&quot;?&gt;<br>&lt;!--Default XML file--&gt;=
<br>&lt;nocblock&gt;<br>=C2=A0 &lt;name&gt;gain&lt;/name&gt;<br>=C2=A0 &lt;=
blockname&gt;gain&lt;/blockname&gt;<br>=C2=A0 &lt;ids&gt;<br>=C2=A0 =C2=A0 =
&lt;id revision=3D&quot;0&quot;&gt;B7DD64941A952AAC&lt;/id&gt;<br>=C2=A0 &l=
t;/ids&gt;<br>=C2=A0 &lt;!-- Registers --&gt;<br>=C2=A0 &lt;registers&gt;<b=
r>=C2=A0 =C2=A0 &lt;setreg&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;GAIN&lt;=
/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address&gt;128&lt;/address&gt;<br>=C2=
=A0 =C2=A0 &lt;/setreg&gt;<br>=C2=A0 &lt;/registers&gt;<br>=C2=A0 &lt;!-- A=
rgs --&gt;<br>=C2=A0 &lt;args&gt;<br>=C2=A0 =C2=A0 &lt;args&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;name&gt;gain&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;typ=
e&gt;double&lt;/type&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;value&gt;1.0&lt;/value=
&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;check&gt;GE($gain, 0.0) AND LE($gain, 3276=
7.0)&lt;/check&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;check_message&gt;Invalid Gai=
n!&lt;/check_message&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;action&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 SR_WRITE(&quot;GAIN&quot;, IROUND($gain))<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;/action&gt;<br>=C2=A0 =C2=A0 &lt;/args&gt;<br>=C2=A0 &lt;=
/args&gt;<br>=C2=A0 &lt;!--One input, one output. If this is used, better h=
ave all the info the C++ file.--&gt;<br>=C2=A0 &lt;ports&gt;<br>=C2=A0 =C2=
=A0 &lt;sink&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;in0&lt;/name&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;sc16&lt;/type&gt;<br>=C2=A0 =C2=A0 &lt;/si=
nk&gt;<br>=C2=A0 =C2=A0 &lt;source&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;=
out0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;sc16&lt;/type&gt;<br>=
=C2=A0 =C2=A0 &lt;/source&gt;<br>=C2=A0 &lt;/ports&gt;<br>&lt;/nocblock&gt;=
</div><div><br></div><div><br></div><div>Regards,</div><div>Jon<br></div><d=
iv><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22, 2019 at 10:51 AM Jonathan Loc=
khart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">NVM, I got it=
 set. I am teasing through the long console output now. Might of wanted to =
set the file log instead. Live and learn. <br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22, 2019 at 10:20=
 AM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Good pr=
ogress, agreed it looks like the gain arg isn&#39;t getting created here...=
=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">If you run with log lev=
el trace, rfnoc should (might?) indicate the xml file it loaded. I&#39;d tr=
y to find that xml and confirm it looks like what you expect, with the gain=
 arg entry.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Also, perhap=
s grep your prefix and share directories on the embedded device to search f=
or any other xml files that might match the noc id or provide the same &quo=
t;gain&quot; block... I&#39;ve definitely fought with conflicting xml defin=
itions before, you might be seeing that here.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Nov 22, 2019, 9:36 AM Jonathan Lockha=
rt &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"noreferrer noreferre=
r noreferrer noreferrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hey EJ,</div><div><br></div><div>Sorry for being slow I had to d=
ig=20
around to set that UHD Log variable, which easy enough it was just a=20
simple export. I then ran uhd_usrp_probe with the --tree and setting the
 fpga to my bit file. Here is the output from the probe. <br></div><div><br=
></div><div>root@ettus-e3xx-sg3:~# uhd_usrp_probe --args=3D&quot;fpga=3D./n=
ewinstall/e300.bit&quot; --tree<br>[INFO] [UHD] linux; GNU C++ version 4.9.=
2; Boost_105700; UHD_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [E300] Loading FPGA =
image: ./newinstall/e300.bit...<br>[INFO] [E300] FPGA image loaded<br>[INFO=
] [E300] Detecting internal GPS <br>.... [INFO] [E300] GPSDO found<br>[INFO=
] [E300] Initializing core control (global registers)...<br><br>[INFO] [E30=
0] Performing register loopback test... <br>[INFO] [E300] Register loopback=
 test passed<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12=
AD100000000000)<br>[WARNING] [RFNOC] Can&#39;t find a block controller for =
key gain, using default block controller!<br>[INFO] [0/gain_0] Initializing=
 block control (NOC ID: 0xB7DD64941A952AAC)<br>[INFO] [0/DDC_0] Initializin=
g block control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [RFNOC] Can&#39;t=
 find a block controller for key FFT, using default block controller!<br>[I=
NFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)<br>/=
<br>/name<br>/mboards<br>/mboards/0<br>/mboards/0/name<br>/mboards/0/codena=
me<br>/mboards/0/fpga_version<br>/mboards/0/fpga_version_hash<br>/mboards/0=
/clock_source<br>/mboards/0/clock_source/value<br>/mboards/0/clock_source/o=
ptions<br>/mboards/0/sensors<br>/mboards/0/sensors/temp<br>/mboards/0/senso=
rs/ref_locked<br>/mboards/0/sensors/gps_locked<br>/mboards/0/sensors/gps_ti=
me<br>/mboards/0/sensors/gps_position<br>/mboards/0/sensors/gps_gpgga<br>/m=
boards/0/sensors/gps_gprmc<br>/mboards/0/eeprom<br>/mboards/0/dboards<br>/m=
boards/0/dboards/A<br>/mboards/0/dboards/A/rx_eeprom<br>/mboards/0/dboards/=
A/tx_eeprom<br>/mboards/0/dboards/A/gdb_eeprom<br>/mboards/0/dboards/A/rx_f=
rontends<br>/mboards/0/dboards/A/rx_frontends/A<br>/mboards/0/dboards/A/rx_=
frontends/A/name<br>/mboards/0/dboards/A/rx_frontends/A/sensors<br>/mboards=
/0/dboards/A/rx_frontends/A/sensors/temp<br>/mboards/0/dboards/A/rx_fronten=
ds/A/sensors/rssi<br>/mboards/0/dboards/A/rx_frontends/A/sensors/lo_locked<=
br>/mboards/0/dboards/A/rx_frontends/A/gains<br>/mboards/0/dboards/A/rx_fro=
ntends/A/gains/PGA<br>/mboards/0/dboards/A/rx_frontends/A/gains/PGA/range<b=
r>/mboards/0/dboards/A/rx_frontends/A/gains/PGA/value<br>/mboards/0/dboards=
/A/rx_frontends/A/connection<br>/mboards/0/dboards/A/rx_frontends/A/enabled=
<br>/mboards/0/dboards/A/rx_frontends/A/use_lo_offset<br>/mboards/0/dboards=
/A/rx_frontends/A/bandwidth<br>/mboards/0/dboards/A/rx_frontends/A/bandwidt=
h/value<br>/mboards/0/dboards/A/rx_frontends/A/bandwidth/range<br>/mboards/=
0/dboards/A/rx_frontends/A/freq<br>/mboards/0/dboards/A/rx_frontends/A/freq=
/range<br>/mboards/0/dboards/A/rx_frontends/A/freq/value<br>/mboards/0/dboa=
rds/A/rx_frontends/A/dc_offset<br>/mboards/0/dboards/A/rx_frontends/A/dc_of=
fset/enable<br>/mboards/0/dboards/A/rx_frontends/A/iq_balance<br>/mboards/0=
/dboards/A/rx_frontends/A/iq_balance/enable<br>/mboards/0/dboards/A/rx_fron=
tends/A/gain<br>/mboards/0/dboards/A/rx_frontends/A/gain/agc<br>/mboards/0/=
dboards/A/rx_frontends/A/gain/agc/enable<br>/mboards/0/dboards/A/rx_fronten=
ds/A/gain/agc/mode<br>/mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/val=
ue<br>/mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/options<br>/mboards=
/0/dboards/A/rx_frontends/A/filters<br>/mboards/0/dboards/A/rx_frontends/A/=
filters/DEC_3<br>/mboards/0/dboards/A/rx_frontends/A/filters/DEC_3/value<br=
>/mboards/0/dboards/A/rx_frontends/A/filters/FIR_1<br>/mboards/0/dboards/A/=
rx_frontends/A/filters/FIR_1/value<br>/mboards/0/dboards/A/rx_frontends/A/f=
ilters/HB_1<br>/mboards/0/dboards/A/rx_frontends/A/filters/HB_1/value<br>/m=
boards/0/dboards/A/rx_frontends/A/filters/HB_2<br>/mboards/0/dboards/A/rx_f=
rontends/A/filters/HB_2/value<br>/mboards/0/dboards/A/rx_frontends/A/filter=
s/HB_3<br>/mboards/0/dboards/A/rx_frontends/A/filters/HB_3/value<br>/mboard=
s/0/dboards/A/rx_frontends/A/filters/LPF_BB<br>/mboards/0/dboards/A/rx_fron=
tends/A/filters/LPF_BB/value<br>/mboards/0/dboards/A/rx_frontends/A/filters=
/LPF_TIA<br>/mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA/value<br>/m=
boards/0/dboards/A/rx_frontends/A/antenna<br>/mboards/0/dboards/A/rx_fronte=
nds/A/antenna/options<br>/mboards/0/dboards/A/rx_frontends/A/antenna/value<=
br>/mboards/0/dboards/A/rx_frontends/B<br>/mboards/0/dboards/A/rx_frontends=
/B/name<br>/mboards/0/dboards/A/rx_frontends/B/sensors<br>/mboards/0/dboard=
s/A/rx_frontends/B/sensors/temp<br>/mboards/0/dboards/A/rx_frontends/B/sens=
ors/rssi<br>/mboards/0/dboards/A/rx_frontends/B/sensors/lo_locked<br>/mboar=
ds/0/dboards/A/rx_frontends/B/gains<br>/mboards/0/dboards/A/rx_frontends/B/=
gains/PGA<br>/mboards/0/dboards/A/rx_frontends/B/gains/PGA/range<br>/mboard=
s/0/dboards/A/rx_frontends/B/gains/PGA/value<br>/mboards/0/dboards/A/rx_fro=
ntends/B/connection<br>/mboards/0/dboards/A/rx_frontends/B/enabled<br>/mboa=
rds/0/dboards/A/rx_frontends/B/use_lo_offset<br>/mboards/0/dboards/A/rx_fro=
ntends/B/bandwidth<br>/mboards/0/dboards/A/rx_frontends/B/bandwidth/value<b=
r>/mboards/0/dboards/A/rx_frontends/B/bandwidth/range<br>/mboards/0/dboards=
/A/rx_frontends/B/freq<br>/mboards/0/dboards/A/rx_frontends/B/freq/range<br=
>/mboards/0/dboards/A/rx_frontends/B/freq/value<br>/mboards/0/dboards/A/rx_=
frontends/B/dc_offset<br>/mboards/0/dboards/A/rx_frontends/B/dc_offset/enab=
le<br>/mboards/0/dboards/A/rx_frontends/B/iq_balance<br>/mboards/0/dboards/=
A/rx_frontends/B/iq_balance/enable<br>/mboards/0/dboards/A/rx_frontends/B/g=
ain<br>/mboards/0/dboards/A/rx_frontends/B/gain/agc<br>/mboards/0/dboards/A=
/rx_frontends/B/gain/agc/enable<br>/mboards/0/dboards/A/rx_frontends/B/gain=
/agc/mode<br>/mboards/0/dboards/A/rx_frontends/B/gain/agc/mode/value<br>/mb=
oards/0/dboards/A/rx_frontends/B/gain/agc/mode/options<br>/mboards/0/dboard=
s/A/rx_frontends/B/filters<br>/mboards/0/dboards/A/rx_frontends/B/filters/D=
EC_3<br>/mboards/0/dboards/A/rx_frontends/B/filters/DEC_3/value<br>/mboards=
/0/dboards/A/rx_frontends/B/filters/FIR_1<br>/mboards/0/dboards/A/rx_fronte=
nds/B/filters/FIR_1/value<br>/mboards/0/dboards/A/rx_frontends/B/filters/HB=
_1<br>/mboards/0/dboards/A/rx_frontends/B/filters/HB_1/value<br>/mboards/0/=
dboards/A/rx_frontends/B/filters/HB_2<br>/mboards/0/dboards/A/rx_frontends/=
B/filters/HB_2/value<br>/mboards/0/dboards/A/rx_frontends/B/filters/HB_3<br=
>/mboards/0/dboards/A/rx_frontends/B/filters/HB_3/value<br>/mboards/0/dboar=
ds/A/rx_frontends/B/filters/LPF_BB<br>/mboards/0/dboards/A/rx_frontends/B/f=
ilters/LPF_BB/value<br>/mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA<=
br>/mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA/value<br>/mboards/0/=
dboards/A/rx_frontends/B/antenna<br>/mboards/0/dboards/A/rx_frontends/B/ant=
enna/options<br>/mboards/0/dboards/A/rx_frontends/B/antenna/value<br>/mboar=
ds/0/dboards/A/tx_frontends<br>/mboards/0/dboards/A/tx_frontends/A<br>/mboa=
rds/0/dboards/A/tx_frontends/A/name<br>/mboards/0/dboards/A/tx_frontends/A/=
sensors<br>/mboards/0/dboards/A/tx_frontends/A/sensors/temp<br>/mboards/0/d=
boards/A/tx_frontends/A/sensors/lo_locked<br>/mboards/0/dboards/A/tx_fronte=
nds/A/gains<br>/mboards/0/dboards/A/tx_frontends/A/gains/PGA<br>/mboards/0/=
dboards/A/tx_frontends/A/gains/PGA/range<br>/mboards/0/dboards/A/tx_fronten=
ds/A/gains/PGA/value<br>/mboards/0/dboards/A/tx_frontends/A/connection<br>/=
mboards/0/dboards/A/tx_frontends/A/enabled<br>/mboards/0/dboards/A/tx_front=
ends/A/use_lo_offset<br>/mboards/0/dboards/A/tx_frontends/A/bandwidth<br>/m=
boards/0/dboards/A/tx_frontends/A/bandwidth/value<br>/mboards/0/dboards/A/t=
x_frontends/A/bandwidth/range<br>/mboards/0/dboards/A/tx_frontends/A/freq<b=
r>/mboards/0/dboards/A/tx_frontends/A/freq/range<br>/mboards/0/dboards/A/tx=
_frontends/A/freq/value<br>/mboards/0/dboards/A/tx_frontends/A/filters<br>/=
mboards/0/dboards/A/tx_frontends/A/filters/FIR_1<br>/mboards/0/dboards/A/tx=
_frontends/A/filters/FIR_1/value<br>/mboards/0/dboards/A/tx_frontends/A/fil=
ters/HB_1<br>/mboards/0/dboards/A/tx_frontends/A/filters/HB_1/value<br>/mbo=
ards/0/dboards/A/tx_frontends/A/filters/HB_2<br>/mboards/0/dboards/A/tx_fro=
ntends/A/filters/HB_2/value<br>/mboards/0/dboards/A/tx_frontends/A/filters/=
HB_3<br>/mboards/0/dboards/A/tx_frontends/A/filters/HB_3/value<br>/mboards/=
0/dboards/A/tx_frontends/A/filters/INT_3<br>/mboards/0/dboards/A/tx_fronten=
ds/A/filters/INT_3/value<br>/mboards/0/dboards/A/tx_frontends/A/filters/LPF=
_BB<br>/mboards/0/dboards/A/tx_frontends/A/filters/LPF_BB/value<br>/mboards=
/0/dboards/A/tx_frontends/A/filters/LPF_SECONDARY<br>/mboards/0/dboards/A/t=
x_frontends/A/filters/LPF_SECONDARY/value<br>/mboards/0/dboards/A/tx_fronte=
nds/A/antenna<br>/mboards/0/dboards/A/tx_frontends/A/antenna/options<br>/mb=
oards/0/dboards/A/tx_frontends/A/antenna/value<br>/mboards/0/dboards/A/tx_f=
rontends/B<br>/mboards/0/dboards/A/tx_frontends/B/name<br>/mboards/0/dboard=
s/A/tx_frontends/B/sensors<br>/mboards/0/dboards/A/tx_frontends/B/sensors/t=
emp<br>/mboards/0/dboards/A/tx_frontends/B/sensors/lo_locked<br>/mboards/0/=
dboards/A/tx_frontends/B/gains<br>/mboards/0/dboards/A/tx_frontends/B/gains=
/PGA<br>/mboards/0/dboards/A/tx_frontends/B/gains/PGA/range<br>/mboards/0/d=
boards/A/tx_frontends/B/gains/PGA/value<br>/mboards/0/dboards/A/tx_frontend=
s/B/connection<br>/mboards/0/dboards/A/tx_frontends/B/enabled<br>/mboards/0=
/dboards/A/tx_frontends/B/use_lo_offset<br>/mboards/0/dboards/A/tx_frontend=
s/B/bandwidth<br>/mboards/0/dboards/A/tx_frontends/B/bandwidth/value<br>/mb=
oards/0/dboards/A/tx_frontends/B/bandwidth/range<br>/mboards/0/dboards/A/tx=
_frontends/B/freq<br>/mboards/0/dboards/A/tx_frontends/B/freq/range<br>/mbo=
ards/0/dboards/A/tx_frontends/B/freq/value<br>/mboards/0/dboards/A/tx_front=
ends/B/filters<br>/mboards/0/dboards/A/tx_frontends/B/filters/FIR_1<br>/mbo=
ards/0/dboards/A/tx_frontends/B/filters/FIR_1/value<br>/mboards/0/dboards/A=
/tx_frontends/B/filters/HB_1<br>/mboards/0/dboards/A/tx_frontends/B/filters=
/HB_1/value<br>/mboards/0/dboards/A/tx_frontends/B/filters/HB_2<br>/mboards=
/0/dboards/A/tx_frontends/B/filters/HB_2/value<br>/mboards/0/dboards/A/tx_f=
rontends/B/filters/HB_3<br>/mboards/0/dboards/A/tx_frontends/B/filters/HB_3=
/value<br>/mboards/0/dboards/A/tx_frontends/B/filters/INT_3<br>/mboards/0/d=
boards/A/tx_frontends/B/filters/INT_3/value<br>/mboards/0/dboards/A/tx_fron=
tends/B/filters/LPF_BB<br>/mboards/0/dboards/A/tx_frontends/B/filters/LPF_B=
B/value<br>/mboards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY<br>/mb=
oards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY/value<br>/mboards/0/=
dboards/A/tx_frontends/B/antenna<br>/mboards/0/dboards/A/tx_frontends/B/ant=
enna/options<br>/mboards/0/dboards/A/tx_frontends/B/antenna/value<br>/mboar=
ds/0/global_regs<br>/mboards/0/global_regs/misc<br>/mboards/0/global_regs/p=
ll<br>/mboards/0/tick_rate<br>/mboards/0/xbar<br>/mboards/0/xbar/Radio_0<br=
>/mboards/0/xbar/Radio_0/noc_id<br>/mboards/0/xbar/Radio_0/input_buffer_siz=
e<br>/mboards/0/xbar/Radio_0/input_buffer_size/0<br>/mboards/0/xbar/Radio_0=
/input_buffer_size/1<br>/mboards/0/xbar/Radio_0/mtu<br>/mboards/0/xbar/Radi=
o_0/mtu/0<br>/mboards/0/xbar/Radio_0/mtu/1<br>/mboards/0/xbar/Radio_0/ports=
<br>/mboards/0/xbar/Radio_0/ports/in<br>/mboards/0/xbar/Radio_0/ports/in/0<=
br>/mboards/0/xbar/Radio_0/ports/in/1<br>/mboards/0/xbar/Radio_0/ports/out<=
br>/mboards/0/xbar/Radio_0/ports/out/0<br>/mboards/0/xbar/Radio_0/ports/out=
/1<br>/mboards/0/xbar/Radio_0/args<br>/mboards/0/xbar/Radio_0/args/0<br>/mb=
oards/0/xbar/Radio_0/args/0/spp<br>/mboards/0/xbar/Radio_0/args/0/spp/type<=
br>/mboards/0/xbar/Radio_0/args/0/spp/value<br>/mboards/0/xbar/Radio_0/args=
/1<br>/mboards/0/xbar/gain_0<br>/mboards/0/xbar/gain_0/noc_id<br>/mboards/0=
/xbar/gain_0/input_buffer_size<br>/mboards/0/xbar/gain_0/input_buffer_size/=
0<br>/mboards/0/xbar/gain_0/mtu<br>/mboards/0/xbar/gain_0/mtu/0<br>/mboards=
/0/xbar/gain_0/registers<br>/mboards/0/xbar/gain_0/registers/sr<br>/mboards=
/0/xbar/gain_0/registers/sr/Gain<br>/mboards/0/xbar/gain_0/ports<br>/mboard=
s/0/xbar/gain_0/ports/in<br>/mboards/0/xbar/gain_0/ports/in/0<br>/mboards/0=
/xbar/gain_0/ports/out<br>/mboards/0/xbar/gain_0/ports/out/0<br>/mboards/0/=
xbar/gain_0/args<br>/mboards/0/xbar/gain_0/args/0<br>/mboards/0/xbar/DDC_0<=
br>/mboards/0/xbar/DDC_0/noc_id<br>/mboards/0/xbar/DDC_0/input_buffer_size<=
br>/mboards/0/xbar/DDC_0/input_buffer_size/0<br>/mboards/0/xbar/DDC_0/input=
_buffer_size/1<br>/mboards/0/xbar/DDC_0/mtu<br>/mboards/0/xbar/DDC_0/mtu/0<=
br>/mboards/0/xbar/DDC_0/mtu/1<br>/mboards/0/xbar/DDC_0/registers<br>/mboar=
ds/0/xbar/DDC_0/registers/sr<br>/mboards/0/xbar/DDC_0/registers/sr/N<br>/mb=
oards/0/xbar/DDC_0/registers/sr/M<br>/mboards/0/xbar/DDC_0/registers/sr/CON=
FIG<br>/mboards/0/xbar/DDC_0/registers/sr/DDS_FREQ<br>/mboards/0/xbar/DDC_0=
/registers/sr/SCALE_IQ<br>/mboards/0/xbar/DDC_0/registers/sr/DECIM_WORD<br>=
/mboards/0/xbar/DDC_0/registers/sr/MODE<br>/mboards/0/xbar/DDC_0/registers/=
sr/RELOAD<br>/mboards/0/xbar/DDC_0/ports<br>/mboards/0/xbar/DDC_0/ports/in<=
br>/mboards/0/xbar/DDC_0/ports/in/0<br>/mboards/0/xbar/DDC_0/ports/in/1<br>=
/mboards/0/xbar/DDC_0/ports/out<br>/mboards/0/xbar/DDC_0/ports/out/0<br>/mb=
oards/0/xbar/DDC_0/ports/out/1<br>/mboards/0/xbar/DDC_0/args<br>/mboards/0/=
xbar/DDC_0/args/0<br>/mboards/0/xbar/DDC_0/args/0/freq<br>/mboards/0/xbar/D=
DC_0/args/0/freq/type<br>/mboards/0/xbar/DDC_0/args/0/freq/value<br>/mboard=
s/0/xbar/DDC_0/args/0/input_rate<br>/mboards/0/xbar/DDC_0/args/0/input_rate=
/type<br>/mboards/0/xbar/DDC_0/args/0/input_rate/value<br>/mboards/0/xbar/D=
DC_0/args/0/output_rate<br>/mboards/0/xbar/DDC_0/args/0/output_rate/type<br=
>/mboards/0/xbar/DDC_0/args/0/output_rate/value<br>/mboards/0/xbar/DDC_0/ar=
gs/0/fullscale<br>/mboards/0/xbar/DDC_0/args/0/fullscale/type<br>/mboards/0=
/xbar/DDC_0/args/0/fullscale/value<br>/mboards/0/xbar/DDC_0/args/0/scalar_c=
orrection<br>/mboards/0/xbar/DDC_0/args/0/scalar_correction/type<br>/mboard=
s/0/xbar/DDC_0/args/0/scalar_correction/value<br>/mboards/0/xbar/DDC_0/args=
/1<br>/mboards/0/xbar/DDC_0/args/1/freq<br>/mboards/0/xbar/DDC_0/args/1/fre=
q/type<br>/mboards/0/xbar/DDC_0/args/1/freq/value<br>/mboards/0/xbar/DDC_0/=
args/1/input_rate<br>/mboards/0/xbar/DDC_0/args/1/input_rate/type<br>/mboar=
ds/0/xbar/DDC_0/args/1/input_rate/value<br>/mboards/0/xbar/DDC_0/args/1/out=
put_rate<br>/mboards/0/xbar/DDC_0/args/1/output_rate/type<br>/mboards/0/xba=
r/DDC_0/args/1/output_rate/value<br>/mboards/0/xbar/DDC_0/args/1/fullscale<=
br>/mboards/0/xbar/DDC_0/args/1/fullscale/type<br>/mboards/0/xbar/DDC_0/arg=
s/1/fullscale/value<br>/mboards/0/xbar/DDC_0/args/1/scalar_correction<br>/m=
boards/0/xbar/DDC_0/args/1/scalar_correction/type<br>/mboards/0/xbar/DDC_0/=
args/1/scalar_correction/value<br>/mboards/0/xbar/DDC_0/legacy_api<br>/mboa=
rds/0/xbar/DDC_0/legacy_api/0<br>/mboards/0/xbar/DDC_0/legacy_api/0/rate<br=
>/mboards/0/xbar/DDC_0/legacy_api/0/rate/value<br>/mboards/0/xbar/DDC_0/leg=
acy_api/0/rate/range<br>/mboards/0/xbar/DDC_0/legacy_api/0/freq<br>/mboards=
/0/xbar/DDC_0/legacy_api/0/freq/value<br>/mboards/0/xbar/DDC_0/legacy_api/0=
/freq/range<br>/mboards/0/xbar/DDC_0/legacy_api/1<br>/mboards/0/xbar/DDC_0/=
legacy_api/1/rate<br>/mboards/0/xbar/DDC_0/legacy_api/1/rate/value<br>/mboa=
rds/0/xbar/DDC_0/legacy_api/1/rate/range<br>/mboards/0/xbar/DDC_0/legacy_ap=
i/1/freq<br>/mboards/0/xbar/DDC_0/legacy_api/1/freq/value<br>/mboards/0/xba=
r/DDC_0/legacy_api/1/freq/range<br>/mboards/0/xbar/FFT_0<br>/mboards/0/xbar=
/FFT_0/noc_id<br>/mboards/0/xbar/FFT_0/input_buffer_size<br>/mboards/0/xbar=
/FFT_0/input_buffer_size/0<br>/mboards/0/xbar/FFT_0/mtu<br>/mboards/0/xbar/=
FFT_0/mtu/0<br>/mboards/0/xbar/FFT_0/registers<br>/mboards/0/xbar/FFT_0/reg=
isters/sr<br>/mboards/0/xbar/FFT_0/registers/sr/FFT_RESET<br>/mboards/0/xba=
r/FFT_0/registers/sr/FFT_SIZE_LOG2<br>/mboards/0/xbar/FFT_0/registers/sr/MA=
GNITUDE_OUT<br>/mboards/0/xbar/FFT_0/registers/sr/FFT_DIRECTION<br>/mboards=
/0/xbar/FFT_0/registers/sr/FFT_SCALING<br>/mboards/0/xbar/FFT_0/registers/s=
r/FFT_SHIFT_CONFIG<br>/mboards/0/xbar/FFT_0/registers/rb<br>/mboards/0/xbar=
/FFT_0/registers/rb/RB_FFT_RESET<br>/mboards/0/xbar/FFT_0/registers/rb/RB_M=
AGNITUDE_OUT<br>/mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SIZE_LOG2<br>/mbo=
ards/0/xbar/FFT_0/registers/rb/RB_FFT_DIRECTION<br>/mboards/0/xbar/FFT_0/re=
gisters/rb/RB_FFT_SCALING<br>/mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SHIF=
T_CONFIG<br>/mboards/0/xbar/FFT_0/ports<br>/mboards/0/xbar/FFT_0/ports/in<b=
r>/mboards/0/xbar/FFT_0/ports/in/0<br>/mboards/0/xbar/FFT_0/ports/out<br>/m=
boards/0/xbar/FFT_0/ports/out/0<br>/mboards/0/xbar/FFT_0/args<br>/mboards/0=
/xbar/FFT_0/args/0<br>/mboards/0/xbar/FFT_0/args/0/spp<br>/mboards/0/xbar/F=
FT_0/args/0/spp/type<br>/mboards/0/xbar/FFT_0/args/0/spp/value<br>/mboards/=
0/xbar/FFT_0/args/0/shift<br>/mboards/0/xbar/FFT_0/args/0/shift/type<br>/mb=
oards/0/xbar/FFT_0/args/0/shift/value<br>/mboards/0/xbar/FFT_0/args/0/direc=
tion<br>/mboards/0/xbar/FFT_0/args/0/direction/type<br>/mboards/0/xbar/FFT_=
0/args/0/direction/value<br>/mboards/0/xbar/FFT_0/args/0/scaling<br>/mboard=
s/0/xbar/FFT_0/args/0/scaling/type<br>/mboards/0/xbar/FFT_0/args/0/scaling/=
value<br>/mboards/0/xbar/FFT_0/args/0/otype<br>/mboards/0/xbar/FFT_0/args/0=
/otype/type<br>/mboards/0/xbar/FFT_0/args/0/otype/value<br>/mboards/0/xbar/=
FFT_0/args/0/reset<br>/mboards/0/xbar/FFT_0/args/0/reset/type<br>/mboards/0=
/xbar/FFT_0/args/0/reset/value<br>/mboards/0/xbar/FFT_0/args/0/magnitude_ou=
t<br>/mboards/0/xbar/FFT_0/args/0/magnitude_out/type<br>/mboards/0/xbar/FFT=
_0/args/0/magnitude_out/value<br>/mboards/0/time<br>/mboards/0/time/now<br>=
/mboards/0/time/pps<br>/mboards/0/time/cmd<br>/mboards/0/time_source<br>/mb=
oards/0/time_source/value<br>/mboards/0/time_source/options<br>/mboards/0/r=
x_codecs<br>/mboards/0/rx_codecs/A<br>/mboards/0/rx_codecs/A/name<br>/mboar=
ds/0/rx_codecs/A/gains<br>/mboards/0/tx_codecs<br>/mboards/0/tx_codecs/A<br=
>/mboards/0/tx_codecs/A/name<br>/mboards/0/tx_codecs/A/gains<br>/mboards/0/=
gpio<br>/mboards/0/gpio/INT0<br>/mboards/0/gpio/INT0/SRC<br>/mboards/0/gpio=
/INT0/CTRL<br>/mboards/0/gpio/INT0/DDR<br>/mboards/0/gpio/INT0/OUT<br>/mboa=
rds/0/gpio/INT0/ATR_0X<br>/mboards/0/gpio/INT0/ATR_RX<br>/mboards/0/gpio/IN=
T0/ATR_TX<br>/mboards/0/gpio/INT0/ATR_XX<br>/mboards/0/gpio/INT0/READBACK<b=
r>/mboards/0/rx_dsps<br>/mboards/0/rx_dsps/0<br>/mboards/0/rx_dsps/0/stream=
_cmd<br>/mboards/0/rx_dsps/0/freq<br>/mboards/0/rx_dsps/0/freq/value<br>/mb=
oards/0/rx_dsps/0/freq/range<br>/mboards/0/rx_dsps/0/rate<br>/mboards/0/rx_=
dsps/0/rate/value<br>/mboards/0/rx_dsps/1<br>/mboards/0/rx_dsps/1/stream_cm=
d<br>/mboards/0/rx_dsps/1/freq<br>/mboards/0/rx_dsps/1/freq/value<br>/mboar=
ds/0/rx_dsps/1/freq/range<br>/mboards/0/rx_dsps/1/rate<br>/mboards/0/rx_dsp=
s/1/rate/value<br>/mboards/0/tx_dsps<br>/mboards/0/tx_dsps/0<br>/mboards/0/=
tx_dsps/0/freq<br>/mboards/0/tx_dsps/0/freq/value<br>/mboards/0/tx_dsps/0/f=
req/range<br>/mboards/0/tx_dsps/0/rate<br>/mboards/0/tx_dsps/0/rate/value<b=
r>/mboards/0/tx_dsps/1<br>/mboards/0/tx_dsps/1/freq<br>/mboards/0/tx_dsps/1=
/freq/value<br>/mboards/0/tx_dsps/1/freq/range<br>/mboards/0/tx_dsps/1/rate=
<br>/mboards/0/tx_dsps/1/rate/value<br>/mboards/0/rx_subdev_spec<br>/mboard=
s/0/tx_subdev_spec<br>[INFO] [E300] Loading FPGA image: /home/root/newinsta=
ll/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit...<br>[INFO] [E300] FPG=
A image loaded</div><div><br></div><div>The failure output I got from runni=
ng the python script shows that it can&#39;t find &quot;/mboards/0/xbar/gai=
n_0/args/0/gain/value&quot;
 and when I look at the tree, there is no value instantiated by the=20
probe. It only looks like the furthest that the probe goes down in the=20
mboards is &quot;/mboards/0/xbar/gain_0/args/0&quot;. I am assuming its=20
something in the arguments file not getting loaded, but everything=20
appears ok to me on glance in that XML file. <br></div><div><br></div><div>=
Regards,</div><div>Jon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019 at 4:49 PM EJ Kreinar &l=
t;<a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer noreferrer noref=
errer noreferrer noreferrer" target=3D"_blank">ejkreinar@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Okay, great...<div dir=3D"auto"><br></div><div dir=3D"auto">You m=
ight want to try increasing the log level. Export UHD_LOG_CONSOLE_LEVEL=3Dt=
race or debug and try to make sure the correct xml file is getting applied =
to the block correctly.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
There&#39;s also something like a &quot;--tree&quot; parameter in the uhd_u=
srp_probe so try running the probe with the tree option to print out the de=
vice tree and look for the arguments assigned to your new block.</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Let&#39;s see if any of that helps=
 figure out what&#39;s going on...</div><div dir=3D"auto">EJ</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, N=
ov 21, 2019, 4:01 PM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gm=
ail.com" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer nore=
ferrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Also, =
when I compiled from the OOT directory for ARM, I used this command, which =
I pieced together from the RFNoC build guide, and the release-4 guide for c=
ross-compiling gr-ettus. <br></div><div><br></div><div>cmake -DCMAKE_TOOLCH=
AIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake -DCMAKE=
_INSTALL_PREFIX=3D/usr -DUHD_FPGA_DIR=3D&quot;/home/jon/rfnoc/src/uhd/fpga-=
src/&quot; ../</div><div><br></div><div>Regards,</div><div>Jon<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Nov 21, 2019 at 3:48 PM Jonathan Lockhart &lt;<a href=3D"mailto:jlockh=
artrt@gmail.com" rel=3D"noreferrer noreferrer noreferrer noreferrer norefer=
rer noreferrer noreferrer" target=3D"_blank">jlockhartrt@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Greetings EJ,</div><div><br></div><div>So, from the tutorial,=
 they have you edit the gain.xml file, and this is what I have for it. <br>=
</div><div><br></div><div>&lt;?xml version=3D&quot;1.0&quot;?&gt;<br>&lt;!-=
-Default XML file--&gt;<br>&lt;nocblock&gt;<br>=C2=A0 &lt;name&gt;gain&lt;/=
name&gt;<br>=C2=A0 &lt;blockname&gt;gain&lt;/blockname&gt;<br>=C2=A0 &lt;id=
s&gt;<br>=C2=A0 =C2=A0 &lt;id revision=3D&quot;0&quot;&gt;B7DD64941A952AAC&=
lt;/id&gt;<br>=C2=A0 &lt;/ids&gt;<br>=C2=A0 &lt;!-- Registers --&gt;<br>=C2=
=A0 &lt;registers&gt;<br>=C2=A0 =C2=A0 &lt;setreg&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;name&gt;Gain&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;address&gt;12=
8&lt;/address&gt;<br>=C2=A0 =C2=A0 &lt;/setreg&gt;<br>=C2=A0 &lt;/registers=
&gt;<br>=C2=A0 &lt;!-- Args --&gt;<br>=C2=A0 &lt;args&gt;<br>=C2=A0 =C2=A0 =
&lt;args&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;gain&lt;/name&gt;<br>=C2=
=A0 =C2=A0 =C2=A0 &lt;type&gt;double&lt;/type&gt;<br>=C2=A0 =C2=A0 =C2=A0 &=
lt;value&gt;1.0&lt;/value&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;check&gt;GE($gain=
, 0.0) AND LE($gain, 32767.0)&lt;/check&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;che=
ck_message&gt;Invalid Gain!&lt;/check_message&gt;<br>=C2=A0 =C2=A0 =C2=A0 &=
lt;action&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 SR_WRITE(&quot;GAIN&quot;, IRO=
UND($gain))<br>=C2=A0 =C2=A0 =C2=A0 &lt;/action&gt;<br>=C2=A0 =C2=A0 &lt;/a=
rgs&gt;<br>=C2=A0 &lt;/args&gt;<br>=C2=A0 &lt;!--One input, one output. If =
this is used, better have all the info the C++ file.--&gt;<br>=C2=A0 &lt;po=
rts&gt;<br>=C2=A0 =C2=A0 &lt;sink&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;i=
n0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;sc16&lt;/name&gt;<br>=
=C2=A0 =C2=A0 &lt;/sink&gt;<br>=C2=A0 =C2=A0 &lt;source&gt;<br>=C2=A0 =C2=
=A0 =C2=A0 &lt;name&gt;out0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;type&g=
t;sc16&lt;/name&gt;<br>=C2=A0 =C2=A0 &lt;/source&gt;<br>=C2=A0 &lt;/ports&g=
t;<br>&lt;/nocblock&gt;</div><div><br></div><div>There is an args value and=
 it is declared as gain. <br></div><div><br></div><div>So from there, I fol=
lowed your second suggestion and tried to find where it was installed when =
I did the cross compile. It was not placed in the &quot;GRC_BLOCKS_PATH&quo=
t; of &quot;/share/gnuradio/grc/blocks&quot; like the default RFNoC blocks.=
 It was instead placed in &quot;/share/uhd/rfnoc/bocks&quot; so I added tha=
t to the setup.env file, included below. <br></div><div><br></div><div>LOCA=
LPREFIX=3D~/newinstall/usr<br>export PATH=3D$LOCALPREFIX/bin:$PATH<br>expor=
t LD_LOAD_LIBRARY=3D$LOCALPREFIX/lib:$LD_LOAD_LIBRARY<br>export LD_LIBRARY_=
PATH=3D$LOCALPREFIX/lib:$LD_LIBRARY_PATH<br>export PYTHONPATH=3D$LOCALPREFI=
X/lib/python2.7/site-packages:$PYTHONPATH<br>export PKG_CONFIG_PATH=3D$LOCA=
LPREFIX/lib/pkgconfig:$PKG_CONFIG_PATH<br>export GRC_BLOCKS_PATH=3D$LOCALPR=
EFIX/share/gnuradio/grc/blocks:$GRC_BLOCKS_PATH<br>export UHD_RFNOC_DIR=3D$=
LOCALPREFIX/share/uhd/rfnoc/<br>export UHD_IMAGES_DIR=3D$LOCALPREFIX/share/=
uhd/images<br>export GRC_BLOCKS_PATH=3D$LOCALPREFIX/share/uhd/rfnoc/blocks:=
$GRC_BLOCKS_PATH</div><div><br></div><div>Unfortunately, after re-sourcing =
the setup.env, I still get the same message. <br></div><div><br></div><div>=
=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 223, in &lt;module&gt;<b=
r>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, lin=
e 212, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fpga_path=3Doptions.fp=
ga_path, rx_gain=3Doptions.rx_gain, rx_digital_gain=3Doptions.rx_digital_ga=
in, rx_freq=3Doptions.rx_freq, host_ip_addr=3Doptions.host_ip_addr)<br>=C2=
=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 117, in __init__<br>=C2=A0 =
=C2=A0 self.tutorial_gain_0.set_arg(&quot;gain&quot;, rx_digital_gain)<br>=
=C2=A0 File &quot;/home/root/newinstall/usr/lib/python2.7/site-packages/tut=
orial/tutorial_swig.py&quot;, line 315, in set_arg<br>=C2=A0 =C2=A0 return =
_tutorial_swig.gain_sptr_set_arg(self, *args)<br>RuntimeError: LookupError:=
 Path not found in tree: /mboards/0/xbar/gain_0/args/0/gain/value</div><div=
><br></div><div>I looked at some of your examples (which have been very hel=
pful to get me this far) from what I believe is your github someone linked =
me. Everything appears to match what it should, for what gain is trying to =
accomplish. <br></div><div><br></div><div>Regards,</div><div>Jon<br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Nov 21, 2019 at 3:27 PM EJ Kreinar &lt;<a href=3D"mailto:ejkreinar@g=
mail.com" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer nor=
eferrer noreferrer" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
Hi Jon,<div dir=3D"auto"><br></div><div dir=3D"auto">The rfnoc &quot;nocscr=
ipt&quot; xml definition can create arguments and attach to the device tree=
 like you are trying to set there (it&#39;s not compiled directly, but rath=
er created dynamically from the xml definition)</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">Recommended debugging...</div><div dir=3D"auto">1. =
Check your OOT gain block xml (in rfnoc/blocks) and make sure it has a &quo=
t;gain&quot; field in the &quot;args&quot; list. You&#39;ll also want to ma=
ke sure it writes your desired register, but I don&#39;t think you&#39;re e=
ven getting that far</div><div dir=3D"auto">2. Make sure the block xml is i=
nstalled on the e310 embedded prefix and is found at run time during uhd_us=
rp_probe and when running your application. If it&#39;s not in the right pl=
ace or not attaching to your block then it won&#39;t create the gain argume=
nt</div><div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m guessing it&#=
39;s one of those two possibilities...=C2=A0</div><div dir=3D"auto">EJ</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Nov 21, 2019, 3:19 PM Jonathan Lockhart via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer noreferrer norefer=
rer noreferrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blan=
k">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I was able t=
o get the ARM cross compile working. I removed the build directory and re-s=
ourced the dev environment and then the cross-compile used the -mfloar=3Dha=
rd flag. Not sure what caused the issue earlier and why it wasn&#39;t picki=
ng it up. <br></div><div><br></div><div>Now I have a different issue. So I =
have completed this guide: <a href=3D"https://kb.ettus.com/Getting_Started_=
with_RFNoC_Development" rel=3D"noreferrer noreferrer noreferrer noreferrer =
noreferrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">h=
ttps://kb.ettus.com/Getting_Started_with_RFNoC_Development</a></div><div><b=
r></div><div>I modified the GNURadio just a bit so that the output from gai=
n was placed on a ZMQ push, and the graphics were on the host to graph the =
signal (seen in the screenshots below).</div><div><br></div><div><img src=
=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D1ae818862e&amp;attid=3D0.=
1&amp;th=3D16e8fa0d29d41a0b&amp;view=3Dfimg&amp;rm=3D16e8fa0d29d41a0b&amp;s=
z=3Dw1600-h1000&amp;attbid=3DANGjdJ9y7gFvlLamcYxSJn6AlQPaOWxC-yKbQfs66eomTe=
FYM6q3_niAOKNUXc1Zg3SMXvqL5kKB2WW0iVIUpeHmo3J5jnu8i5PrKbSufhNtuNcli1NuCSF6A=
NVjs9A&amp;disp=3Demb&amp;realattid=3Dii_k395j53q0&amp;zw" alt=3D"Screensho=
t from 2019-11-21 15-06-33.jpg" width=3D"566" height=3D"323"></div><div><br=
></div><div><div><div><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;=
ik=3D1ae818862e&amp;attid=3D0.2&amp;th=3D16e8fa0d29d41a0b&amp;view=3Dfimg&a=
mp;rm=3D16e8fa0d29d41a0b&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ-pgUA2Ixgo=
bGph9ydEXrRSxBiZ2abKuAIUC6-7E30-eRFqzoPp7Si4HBspS4AqGUMX1xI3FnJFhwEqKs4fyPQ=
6s4_qFai45x5QazbWRR2aPlrFaKrc6EfeGhw&amp;disp=3Demb&amp;realattid=3Dii_k395=
j8qd1&amp;zw" alt=3D"Screenshot from 2019-11-21 15-010-44.jpg" width=3D"566=
" height=3D"335"><br></div></div><div><br></div><div>However, when I run th=
e top file for the USRP, I am running into this error. <br></div><div><br><=
/div><div>Traceback (most recent call last):<br>=C2=A0 File &quot;rfnoc_myG=
ain_usrp.py&quot;, line 223, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=
=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 212, in main<br>=C2=A0 =
=C2=A0 tb =3D top_block_cls(fpga_path=3Doptions.fpga_path, rx_gain=3Doption=
s.rx_gain, rx_digital_gain=3Doptions.rx_digital_gain, rx_freq=3Doptions.rx_=
freq, host_ip_addr=3Doptions.host_ip_addr)<br>=C2=A0 File &quot;rfnoc_myGai=
n_usrp.py&quot;, line 117, in __init__<br>=C2=A0 =C2=A0 self.tutorial_gain_=
0.set_arg(&quot;gain&quot;, rx_digital_gain)<br>=C2=A0 File &quot;/home/roo=
t/newinstall/usr/lib/python2.7/site-packages/tutorial/tutorial_swig.py&quot=
;, line 315, in set_arg<br>=C2=A0 =C2=A0 return _tutorial_swig.gain_sptr_se=
t_arg(self, *args)<br>RuntimeError: LookupError: Path not found in tree: /m=
boards/0/xbar/gain_0/args/0/gain/value</div><div><br></div><div>No where el=
se in building GNURadio scripts and .bit files does this &quot;/mboards&quo=
t; arise, and I have looked through my verilog file for gain (gain.v) and i=
t is correct per the instructions in the linked guide, and I built the pyth=
on and gnuradio hook exactly as the instructions stated to. <br></div><div>=
<br></div><div>Anyone have an troubleshooting ideas b/c I am currently at a=
 loss. It did past the test bench they have you build with no issues. <br><=
/div><div><br></div><div>Regards,</div><div></div><div></div><div>Jon</div>=
<div><br></div><div><br></div><div><br></div></div></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov =
20, 2019 at 3:21 PM Jonathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gma=
il.com" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noref=
errer noreferrer noreferrer noreferrer" target=3D"_blank">jlockhartrt@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Greetings,</div><div><br></div><=
div>I am having some issues completing the RFNOC build tutorial on the Ettu=
s E312. The reference documentation is using an X3xx series radio, and from=
 the final python script it appears to be running the GNR script natively o=
n the host. I built the exact script from the KB but when running on the ra=
dio it fails stating it can&#39;t &quot;import tutorial.&quot; I realized a=
ll the files that were installed were placed on the host but not cross comp=
iled for the E3xx using the SDK and ARM cross compile tool. I tried to comp=
lete this task, but unfortunately the compilation dies here. </div><div><br=
></div><div>/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/=
usr/include/gnu/stubs.h:7:11: fatal error: gnu/stubs-soft.h: No such file o=
r directory<br>=C2=A0# include &lt;gnu/stubs-soft.h&gt;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~<br>compilation terminated.</d=
iv><div><br></div><div>Now I did find the stubs-soft.h file in the libc6-de=
v-armel-cross in the apt repo. I installed it and tried to cp the file into=
 the /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/inc=
lude/gnu/ location but it still doesn&#39;t like that. I verified that on m=
y echo $CC that the -mfloat is set to hard as shown here.</div><div><br></d=
iv><div>jon@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC<br>arm-o=
e-linux-gnueabi-gcc -march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon --sysr=
oot=3D/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi</div><=
div><br></div><div>So I am not sure why the gain module in the tutorial is =
looking for the soft file. <br></div><div><br></div><div>If anyone has expe=
rience in porting their OOT modules over to the E-series of radios I would =
appreciate the help. <br></div><div><br></div><div>Regards,</div><div>Jon<b=
r></div></div></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer =
noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer noreferre=
r" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferre=
r noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000005ea3e00597f665a1--


--===============8151574877415831098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8151574877415831098==--

