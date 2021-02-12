Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D00319771
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 01:28:52 +0100 (CET)
Received: from [::1] (port=32978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAMKI-0004Sd-Sr; Thu, 11 Feb 2021 19:28:50 -0500
Received: from sonic304-22.consmr.mail.ne1.yahoo.com ([66.163.191.148]:46466)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lAMKF-0004Gk-0A
 for usrp-users@lists.ettus.com; Thu, 11 Feb 2021 19:28:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613089686; bh=W2nTNN9wEJNnJD71+WUhkNBpEOi7AKyMAt5dZZtYCpg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=tntmpCURoW5o1Lnx3ANwg/mbBSje0lot0Mhns7t2Mpu8lJP0AgjGgl3FgD2Aa8T1+LB8ieCsUT+7wCixPTtFT+/40x2dUC+BtoHAdEDjBxz3+8QBzVwplUf6LGz2oTx9nYpo9RACBVGQapQXSRDwU1kejQuMedx+ekUlH11HdcLZN8KmC9NxJEviHmcm7sCG8xvAuEaOm1xY0BZZqHDWgr9quGjdjZzepwV1R1JUn0kgr6F5PiAv1ZqrVoIcVl7SXlLOKM6x4o86DypdlF+1GLkAHCMsCJISAWl5bHiV3pz/LNuXBntylP70o+INolzjVVZwKFuKJGEhW8R4/9gf7A==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613089686; bh=36fLg9RELZIsrZvopKwnv4swY+GaOT4pI4wvMMarQ7m=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=kar+seHkZL/qJUQv//RixqETxPIqRIBZTk0CW6dffrxxGXWn124IZ7DGoetV7RsLmUezjADc6iQc/Cn+SQ7dq9EqvdDTkfwKYVed0gZG/OF1yrCUdMP29SLsb25Bk0Gle1u7Squ9d48RtfRul8IKQZ0gE0M66amfiF7YQgrF8uYywMSM6M9NsQBET7IJBANhIkhPAzxRqKuQyoIe+fusfaawSZYQUwBSk8pmtbgVCTx9pfLulWqvPqqizrvJwOWPltCnR52IgbRAU3dsNOyK1TfmUxS5SKgQJ2379ztl5dvzHpfeK4+1JhGC3n3a9nOFAeNf46wUMgBAeTmAyZJUXw==
X-YMail-OSG: J6qw1N4VM1nvleCc9hmV6d2KPpgFV3a94bnE_mFB.N6_Va3_q481Mx.NnkPbK9B
 zy03WD3Y_QFW6my6NFLfa6tRuuqG0bpgByVcBdsjlUKKWmoKMg04Xf2aLAH_mz4FfNX3pJdVtI8v
 g_K0ajx9oR0TznoSH7ISl9OmZdanzQpSvrGdHzSFRWdArMwiK4Lc1jClAnP4gK_PC.EK.CJG4RED
 hqmtMIayU1P241qYwh8atxyuTsxAwQFm15xNqXBgtkXG2jX0vnDlMJk2SZVJ1_cBUJM5D_TivFV3
 wuZf4bj3agEpGyLSvFAxe2XGuidO8fo76wI.CQkyQR3lWKrxYqqlFOnNdZk4A4_FPJGBb2FeouyI
 RpRWhBpUrfSyprqYXpcO2snpRNaBoUCqZBZaZIc.msJEf3vjylEp6_4sYJDi_ZTmn6M.BR_.TlQT
 hLny051g9gJhDEzFcWInAR2W3p7atX6FFQqvHGVjUtG2AT0HC_uu04dACfFHBw59U9VMys26vSc1
 HYS_waxesD9AbCyHY3fNnKWwIQcQIqPC2K31BirNs_lV9jZ73oo61CeSY0hvK0Ba8pdE6955CUa3
 yQ2z0CroJF3_uvdzXWa3uouGbPwo6HdxbzDBcNcuCjE49EjUOmSenkP9QADhSubcfhSAq9yI.z15
 9mu5wQcN.SzGTfZfniOwq2nhpDboQ0d1AuhD8kewZECWyaH38shyufWL2D0nZSE4gAYfJq7N1prc
 p6C8Mt.fGCNCpqyBz5fHQ7uYHgITT9q1zGuf943tYskbhidCzIZynmgN0Y_4sQ6zjxwnfCqZ7alH
 lGh4adKHFNBw3.juQMHXqPQ3hbFAmGwH5Kc8XDGsqyFftZ1lipFGTVFzul5S8Sn4k6_WXo60nfbn
 MeNyMT4cbkis14_rIKmltKlvjT6rlhjf0zDGaSyahA4UHJQzUnZ_Ju.2WMIUoIyOhxaDh6i9liUd
 3zg7.Ji37YssaNoNNNQT_DFRrFELB6bzUd9LudX3Lw6gynYBLGA8iuuYIzJUOPcd0gfBYgFe_DTN
 NEeL7BavBmed5WBQo.FjmHJGiEQUQrMl7zu0XFYC36FCweJW_XQOrOT7q7wvcYvrrYqM5XbiGrDl
 JoMpNBxyMTW4zlkejCdkrHW0Dz9UlqBjFpVVExOZUy1O_HI1V82YaUiwTcOBgRRk9IsQB0NkEdbZ
 loVKxd7zxB_0eL0ER0AhhiIz8FPnQDymDJfOouHx9gnkXd5KkE6ZuPlFpZR3Cc2Bx3nMg6.TsDNR
 rUfDPmJc73rok_iXaguS8JO12DNJZaOSpYh2SAn2dkIHfsr8UBb8KQ55Hyr80v7kReM7ucLKwbj0
 Y8tpUBrYNeiD4QDck0ErpxoaavuGb_vTmdp5lqGhLF1jsE0woXDos.lqmDB13X4kD8Bx.tgY5ZDa
 t33RUroXYXDpBThknMoPHWxPETV_yxMjlOqLy0ip8JkqS_Xz.iI4KIBxqUKF9IlMQJagO18T7456
 qFVFB1_3Ui2I330pQM2Jk3MSefXiKlMB6lF5ezBX2UM_mjN0DmxCEAjGZLmeY3Z0VqFxcgp19QYL
 13c5RCQaM2i5kSDwP65VRuCS9bTAhYoiGrhaT3gVl5xhIL.mgjeV5G9jdxP3WLXbiZQiIzsd43aE
 Ki8g8uxIDp6po8BbkOoSltpUIgnHekDhlHz3RJGNDG9EEVumccAsl0hbeoplSY8KGLiu6irS1TsB
 MV5dFW2O1IWupnxS21EXJBshUO_AHPjUiHEA9fr_eiHaUHXVjh8AmkSPh0SlVPshLPzwgXuwnivU
 D3KYn6QEJG8ajzd58GGuLSby2FHrEsvQrcnBMGCppWXbiuQ544m77U1Y88NvxQzqKXVzqQMU87wO
 DwyGNsSlrXSqAzVZ1Obe2c5V39PCsn2cax_.eXbAQGTMZX3IfF_tLRhbhPeFT7A6hm80G97C4hAz
 VS8g4p4jqkDlOUcFwWirMQsM3N2.IEP3TsuhtVIfpn3y5RlC5X8BX9Jvn0GdoMEwcXIS7Rw5Se27
 1pHFxwhsAKEfoKsjhdTuCfpz89a8cFgAwRCVRXhYsfZOO2tLaYiLVl_JPQkIMM_8KBUb6GAXiL8X
 b3LWxszinvuId9WX4dW5LrHmWhOIIQbzvPC7tbJnbKgBUfBcVTJ7DelAHg9BhVFyBn7aui.qhtzl
 GVdcr7TSJtPxLIsxkjCUGq9gDKL8Hi1yw2XuyFGf.qUmTymCqoFEM9AkCYCLDUBz98taZzB3n3zX
 w5qf2Yr_cmsBb1pJcNhCvGep1zqGDLdx8ebDQOLs_3cNHCVEMgGdPHxQL1gkRpA_XY40vDDbKed2
 y8hdaGOD_a62M8TTomjzrNGc2NoAnWGQd5qq8ZGqwhcvMW6cnXPsHizdrWOELpj0lvUuuSfLEesP
 q40xzIb0AffCK0qk6sXT69PhoraldZTgT_EcjBzU_DmKBRYnvoQgAIOJ.w9V.EDBhKdwdAz_6sqo
 CmO78hxIWcMuRyPqiFS58ug--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ne1.yahoo.com with HTTP; Fri, 12 Feb 2021 00:28:06 +0000
Received: by smtp412.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 4da1039700d26c85af0407d31b03cb28; 
 Fri, 12 Feb 2021 00:28:01 +0000 (UTC)
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
References: <4f689791-2302-7230-9931-6bcf890fbce8.ref@verizon.net>
 <4f689791-2302-7230-9931-6bcf890fbce8@verizon.net>
 <fb168c17-61ed-36d9-e970-61d6cf9a08ff@verizon.net>
 <CAL7q81vq1OncbkNU-HyPrRjp4M28Z2feB4VK1iah9JOav2JkBA@mail.gmail.com>
Message-ID: <4092d0af-5324-7a1a-fd10-e3bca31920b4@verizon.net>
Date: Thu, 11 Feb 2021 19:28:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL7q81vq1OncbkNU-HyPrRjp4M28Z2feB4VK1iah9JOav2JkBA@mail.gmail.com>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] E310 and RFNoC
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
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============5052140778932969060=="
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
--===============5052140778932969060==
Content-Type: multipart/alternative;
 boundary="------------7624C64DEA56F4BB74107260"
Content-Language: en-US
Content-Length: 21859

This is a multi-part message in MIME format.
--------------7624C64DEA56F4BB74107260
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Jonathon,

Yes, I believe I have cross compiled it correctly.  These are the steps 
I performed:

# now compile for e310 (updating XML files)
mkdir /rfnoc-mikes/build-arm && cd build-arm
# from new terminal (just to be sure) source the environment variables
source 
~/prefix/rfnoc2/oe/environment-setup-cortexa9t2hf-neon-oe-linux-musleabi
cmake 
-DCMAKE_TOOLCHAIN_FILE=~/prefix/rfnoc2/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake 
-DCMAKE_INSTALL_PREFIX=/usr -DENABLE_QT=OFF ..
make -j3
make install DESTDIR=~/prefix/rfnoc2/e300/
make install 
DESTDIR=~/prefix/rfnoc2/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/

I am using sshfs to make the e300 directory visible to the e310 device.  
I'm not sure why it needs to be installed in two locations but I'm just 
trying to follow instructions that I have seen from various sources.

When I ran rfnocmodtool I used the default settings to create the block 
control files but I left them untouched.  I only modified the xml for 
UHD and the xml for GRC located in ./rfnoc-mikes/grc/ and 
rfnoc-mikes/rfnoc/blocks/

Thanks for looking into this,

Mike

On 2/11/21 6:15 PM, Jonathon Pendlum wrote:
> Hi Mike,
>
> Did you cross-compile your RFNoC OOT module and install it to the E310?
>
> Jonathon
>
> On Tue, Feb 9, 2021 at 9:52 PM Mike via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     All,  I wanted to resurrect a problem that I had couple months ago
>     that
>     I put aside and would now like to fix.  The issue is that I get a
>     python
>     error when executing a flow graph on an E310 that was generated
>     from GRC.
>
>     The error is posted below.  For background I'm using UHD 3.15 with
>     GNU
>     Radio 3.7.  I've successfully created a bit file for the FPGA with a
>     custom block (simple gain block).  I've updated the UHD xml file such
>     that uhd_usrp_probe correctly identifies the new block. Also, using a
>     python command line tool, I've been able to import my module and
>     enough
>     of other modules like ettus and create a device3 variable to see
>     that I
>     can instantiate my mikes.digitalgain block.  Previously I've
>     successfully generated non-RFNoC OOT modules and run them on the
>     E310.
>     So, I'm a little stumped how to get past this error.  Is there an
>     additional step that I'm missing to compile the RFNoC module so
>     that the
>     E310 version of GNU Radio can successfully import the module and
>     connect
>     to it in the top block.  Is the warning about using the default block
>     controller relevant?  I thought that simple blocks could be
>     controlled
>     through the XML files using the default controller.  Any help
>     would be
>     greatly appreciated...
>
>     root@ni-e31x:~# ./e310_rx_spectrum.py
>     [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
>     UHD_3.15.0.0-62-g7a3f1516
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False
>     [WARNING] [MPM.RPCServer] A timeout event occured!
>     [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>     [INFO] [0/Radio_0] Initializing block control (NOC ID:
>     0x12AD100000003310)
>     [WARNING] [RFNOC] Can't find a block controller for key digitalgain,
>     using default block controller!
>     [INFO] [0/digitalgain_0] Initializing block control (NOC ID:
>     0x1234123412341234)
>     [INFO] [MPM.PeriphManager] init() called with device args
>     `product=e310_sg1,mgmt_addr=127.0.0.1'.
>     [WARNING] [RFNOC] Can't find a block controller for key FFT, using
>     default block controller!
>     [INFO] [0/FFT_0] Initializing block control (NOC ID:
>     0xFF70000000000000)
>     [INFO] [0/FIFO_0] Initializing block control (NOC ID:
>     0xF1F0000000000000)
>     [INFO] [0/FIFO_1] Initializing block control (NOC ID:
>     0xF1F0000000000000)
>     [INFO] [0/FIFO_2] Initializing block control (NOC ID:
>     0xF1F0000000000000)
>     [INFO] [0/Radio_0] Performing CODEC loopback test...
>     [INFO] [0/Radio_0] CODEC loopback test passed
>     [INFO] [0/Radio_0] Performing CODEC loopback test...
>     [INFO] [0/Radio_0] CODEC loopback test passed
>     Traceback (most recent call last):
>        File "./e310_rx_spectrum.py", line 191, in <module>
>          main()
>        File "./e310_rx_spectrum.py", line 180, in main
>          tb = top_block_cls(freq=options.freq,
>     rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)
>        File "./e310_rx_spectrum.py", line 80, in __init__
>          self.mikes_digitalgain_0 = mikes.digitalgain(
>     AttributeError: 'module' object has no attribute 'digitalgain'
>     root@ni-e31x:~# ^C
>
>
>     On 11/16/20 3:53 PM, Mike via USRP-users wrote:
>     > All,
>     >
>     > I'm working with the E310 unit and have run up against a road
>     block.
>     > I've completed almost the entire application note, AN-823 (Getting
>     > started with RFNoC Development).
>     >
>     > I'm using UHD 3.15 with GNU Radio 3.7.  I've successfully built a
>     > custom FPGA with the tutorial's "gain" block.  I can see the new
>     block
>     > with the proper name with uhd_usrp_probe.
>     >
>     > I updated the XML files to allow GRC to implement the RFNoC block.
>     >
>     > Here is where I run into problems.  When I copy the gnuradio python
>     > file over to the E310 I keep getting an error that states that the
>     > 'module' object has no attribute 'gain'.
>     >
>     > root@ni-e31x:~# python e310_rx_spectrum.py
>     > [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800;
>     > UHD_3.15.0.0-62-g7a3f1516
>     > [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     >
>     mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False
>     > [WARNING] [MPM.RPCServer] A timeout event occured!
>     > [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>     > [INFO] [0/Radio_0] Initializing block control (NOC ID:
>     > 0x12AD100000003310)
>     > [WARNING] [RFNOC] Can't find a block controller for key gain, using
>     > default block controller!
>     > [INFO] [0/gain_0] Initializing block control (NOC ID:
>     0x1111222233334444)
>     > [INFO] [MPM.PeriphManager] init() called with device args
>     > `mgmt_addr=127.0.0.1,product=e310_sg1'.
>     > [INFO] [0/DDC_0] Initializing block control (NOC ID:
>     0xDDC0000000000000)
>     > [WARNING] [RFNOC] Can't find a block controller for key FFT, using
>     > default block controller!
>     > [INFO] [0/FFT_0] Initializing block control (NOC ID:
>     0xFF70000000000000)
>     > [INFO] [0/Radio_0] Performing CODEC loopback test...
>     > [INFO] [0/Radio_0] CODEC loopback test passed
>     > [INFO] [0/Radio_0] Performing CODEC loopback test...
>     > [INFO] [0/Radio_0] CODEC loopback test passed
>     > Traceback (most recent call last):
>     >   File "e310_rx_spectrum.py", line 216, in <module>
>     >     main()
>     >   File "e310_rx_spectrum.py", line 205, in main
>     >     tb = top_block_cls(freq=options.freq,
>     > rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)
>     >   File "e310_rx_spectrum.py", line 101, in __init__
>     >     self.tutorial_gain_0 = tutorial.gain(
>     > AttributeError: 'module' object has no attribute 'gain'
>     >
>     > Now, I've seen many suggestions on how to address this.  It mostly
>     > describes this as a problem importing the module 'tutorial'.  I've
>     > seen descriptions of using the "nm" command to see if the callback
>     > function is undefined.  But I still haven't been able to fix the
>     issue.
>     >
>     > But mostly what I'm after is a working example of an RFNoC
>     module for
>     > the E310. One that includes the GRC interface so that the software
>     > interface can program the FPGA registers.  I think that a lot of
>     the
>     > tutorials are written for host applications whereas the E310 has a
>     > cross-compiling aspect to it.
>     >
>     > So, if somebody has a working example, I'd greatly appreciate
>     it. Or
>     > maybe a better description or tutorial for E310 specific issues
>     like
>     > cross-compiling OOT RFNoC blocks.
>     >
>     > Many thanks for all the help that has already been given me.
>     >
>     > Mike
>     >
>     >
>     > _______________________________________________
>     > USRP-users mailing list
>     > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------7624C64DEA56F4BB74107260
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Jonathon,</p>
    <p>Yes, I believe I have cross compiled it correctly.  These are the
      steps I performed:</p>
    <p># now compile for e310 (updating XML files)<br>
      mkdir /rfnoc-mikes/build-arm &amp;&amp; cd build-arm<br>
      # from new terminal (just to be sure) source the environment
      variables<br>
      source
      ~/prefix/rfnoc2/oe/environment-setup-cortexa9t2hf-neon-oe-linux-musleabi<br>
      cmake
-DCMAKE_TOOLCHAIN_FILE=~/prefix/rfnoc2/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
      -DCMAKE_INSTALL_PREFIX=/usr -DENABLE_QT=OFF ..<br>
      make -j3<br>
      make install DESTDIR=~/prefix/rfnoc2/e300/<br>
      make install
      DESTDIR=~/prefix/rfnoc2/oe/sysroots/cortexa9t2hf-neon-oe-linux-musleabi/</p>
    <p>I am using sshfs to make the e300 directory visible to the e310
      device.  I'm not sure why it needs to be installed in two
      locations but I'm just trying to follow instructions that I have
      seen from various sources.</p>
    <p>When I ran rfnocmodtool I used the default settings to create the
      block control files but I left them untouched.  I only modified
      the xml for UHD and the xml for GRC located in ./rfnoc-mikes/grc/
      and rfnoc-mikes/rfnoc/blocks/<br>
    </p>
    <p>Thanks for looking into this,</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 2/11/21 6:15 PM, Jonathon Pendlum
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAL7q81vq1OncbkNU-HyPrRjp4M28Z2feB4VK1iah9JOav2JkBA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">
          <div>Hi Mike,</div>
          <div><br>
          </div>
          <div>Did you cross-compile your RFNoC OOT module and install
            it to the E310?</div>
          <div><br>
          </div>
          <div>Jonathon</div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Tue, Feb 9, 2021 at 9:52
            PM Mike via USRP-users &lt;<a
              href="mailto:usrp-users@lists.ettus.com"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">All,  I wanted to
            resurrect a problem that I had couple months ago that <br>
            I put aside and would now like to fix.  The issue is that I
            get a python <br>
            error when executing a flow graph on an E310 that was
            generated from GRC.<br>
            <br>
            The error is posted below.  For background I'm using UHD
            3.15 with GNU <br>
            Radio 3.7.  I've successfully created a bit file for the
            FPGA with a <br>
            custom block (simple gain block).  I've updated the UHD xml
            file such <br>
            that uhd_usrp_probe correctly identifies the new block. 
            Also, using a <br>
            python command line tool, I've been able to import my module
            and enough <br>
            of other modules like ettus and create a device3 variable to
            see that I <br>
            can instantiate my mikes.digitalgain block.  Previously I've
            <br>
            successfully generated non-RFNoC OOT modules and run them on
            the E310.  <br>
            So, I'm a little stumped how to get past this error.  Is
            there an <br>
            additional step that I'm missing to compile the RFNoC module
            so that the <br>
            E310 version of GNU Radio can successfully import the module
            and connect <br>
            to it in the top block.  Is the warning about using the
            default block <br>
            controller relevant?  I thought that simple blocks could be
            controlled <br>
            through the XML files using the default controller.  Any
            help would be <br>
            greatly appreciated...<br>
            <br>
            root@ni-e31x:~# ./e310_rx_spectrum.py<br>
            [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106800; <br>
            UHD_3.15.0.0-62-g7a3f1516<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args: <br>
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False<br>
            [WARNING] [MPM.RPCServer] A timeout event occured!<br>
            [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
            [INFO] [0/Radio_0] Initializing block control (NOC ID:
            0x12AD100000003310)<br>
            [WARNING] [RFNOC] Can't find a block controller for key
            digitalgain, <br>
            using default block controller!<br>
            [INFO] [0/digitalgain_0] Initializing block control (NOC ID:
            <br>
            0x1234123412341234)<br>
            [INFO] [MPM.PeriphManager] init() called with device args <br>
            `product=e310_sg1,mgmt_addr=127.0.0.1'.<br>
            [WARNING] [RFNOC] Can't find a block controller for key FFT,
            using <br>
            default block controller!<br>
            [INFO] [0/FFT_0] Initializing block control (NOC ID:
            0xFF70000000000000)<br>
            [INFO] [0/FIFO_0] Initializing block control (NOC ID:
            0xF1F0000000000000)<br>
            [INFO] [0/FIFO_1] Initializing block control (NOC ID:
            0xF1F0000000000000)<br>
            [INFO] [0/FIFO_2] Initializing block control (NOC ID:
            0xF1F0000000000000)<br>
            [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
            [INFO] [0/Radio_0] CODEC loopback test passed<br>
            [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
            [INFO] [0/Radio_0] CODEC loopback test passed<br>
            Traceback (most recent call last):<br>
               File "./e310_rx_spectrum.py", line 191, in &lt;module&gt;<br>
                 main()<br>
               File "./e310_rx_spectrum.py", line 180, in main<br>
                 tb = top_block_cls(freq=options.freq, <br>
            rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)<br>
               File "./e310_rx_spectrum.py", line 80, in __init__<br>
                 self.mikes_digitalgain_0 = mikes.digitalgain(<br>
            AttributeError: 'module' object has no attribute
            'digitalgain'<br>
            root@ni-e31x:~# ^C<br>
            <br>
            <br>
            On 11/16/20 3:53 PM, Mike via USRP-users wrote:<br>
            &gt; All,<br>
            &gt;<br>
            &gt; I'm working with the E310 unit and have run up against
            a road block.  <br>
            &gt; I've completed almost the entire application note,
            AN-823 (Getting <br>
            &gt; started with RFNoC Development).<br>
            &gt;<br>
            &gt; I'm using UHD 3.15 with GNU Radio 3.7.  I've
            successfully built a <br>
            &gt; custom FPGA with the tutorial's "gain" block.  I can
            see the new block <br>
            &gt; with the proper name with uhd_usrp_probe.<br>
            &gt;<br>
            &gt; I updated the XML files to allow GRC to implement the
            RFNoC block.<br>
            &gt;<br>
            &gt; Here is where I run into problems.  When I copy the
            gnuradio python <br>
            &gt; file over to the E310 I keep getting an error that
            states that the <br>
            &gt; 'module' object has no attribute 'gain'.<br>
            &gt;<br>
            &gt; root@ni-e31x:~# python e310_rx_spectrum.py<br>
            &gt; [INFO] [UHD] linux; GNU C++ version 8.2.0;
            Boost_106800; <br>
            &gt; UHD_3.15.0.0-62-g7a3f1516<br>
            &gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args: <br>
            &gt;
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=3092E3A,claimed=False<br>
            &gt; [WARNING] [MPM.RPCServer] A timeout event occured!<br>
            &gt; [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
            &gt; [INFO] [0/Radio_0] Initializing block control (NOC ID:
            <br>
            &gt; 0x12AD100000003310)<br>
            &gt; [WARNING] [RFNOC] Can't find a block controller for key
            gain, using <br>
            &gt; default block controller!<br>
            &gt; [INFO] [0/gain_0] Initializing block control (NOC ID:
            0x1111222233334444)<br>
            &gt; [INFO] [MPM.PeriphManager] init() called with device
            args <br>
            &gt; `mgmt_addr=127.0.0.1,product=e310_sg1'.<br>
            &gt; [INFO] [0/DDC_0] Initializing block control (NOC ID:
            0xDDC0000000000000)<br>
            &gt; [WARNING] [RFNOC] Can't find a block controller for key
            FFT, using <br>
            &gt; default block controller!<br>
            &gt; [INFO] [0/FFT_0] Initializing block control (NOC ID:
            0xFF70000000000000)<br>
            &gt; [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
            &gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
            &gt; [INFO] [0/Radio_0] Performing CODEC loopback test...<br>
            &gt; [INFO] [0/Radio_0] CODEC loopback test passed<br>
            &gt; Traceback (most recent call last):<br>
            &gt;   File "e310_rx_spectrum.py", line 216, in
            &lt;module&gt;<br>
            &gt;     main()<br>
            &gt;   File "e310_rx_spectrum.py", line 205, in main<br>
            &gt;     tb = top_block_cls(freq=options.freq, <br>
            &gt; rfnoc_gain=options.rfnoc_gain, rx_gain=options.rx_gain)<br>
            &gt;   File "e310_rx_spectrum.py", line 101, in __init__<br>
            &gt;     self.tutorial_gain_0 = tutorial.gain(<br>
            &gt; AttributeError: 'module' object has no attribute 'gain'<br>
            &gt;<br>
            &gt; Now, I've seen many suggestions on how to address
            this.  It mostly <br>
            &gt; describes this as a problem importing the module
            'tutorial'.  I've <br>
            &gt; seen descriptions of using the "nm" command to see if
            the callback <br>
            &gt; function is undefined.  But I still haven't been able
            to fix the issue.<br>
            &gt;<br>
            &gt; But mostly what I'm after is a working example of an
            RFNoC module for <br>
            &gt; the E310. One that includes the GRC interface so that
            the software <br>
            &gt; interface can program the FPGA registers.  I think that
            a lot of the <br>
            &gt; tutorials are written for host applications whereas the
            E310 has a <br>
            &gt; cross-compiling aspect to it.<br>
            &gt;<br>
            &gt; So, if somebody has a working example, I'd greatly
            appreciate it. Or <br>
            &gt; maybe a better description or tutorial for E310
            specific issues like <br>
            &gt; cross-compiling OOT RFNoC blocks.<br>
            &gt;<br>
            &gt; Many thanks for all the help that has already been
            given me.<br>
            &gt;<br>
            &gt; Mike<br>
            &gt;<br>
            &gt;<br>
            &gt; _______________________________________________<br>
            &gt; USRP-users mailing list<br>
            &gt; <a href="mailto:USRP-users@lists.ettus.com"
              target="_blank" moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
            &gt; <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
              moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
            <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------7624C64DEA56F4BB74107260--


--===============5052140778932969060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5052140778932969060==--

