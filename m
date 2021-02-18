Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B8D31F1EA
	for <lists+usrp-users@lfdr.de>; Thu, 18 Feb 2021 22:59:42 +0100 (CET)
Received: from [::1] (port=47642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCrKk-0007WS-9E; Thu, 18 Feb 2021 16:59:38 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:41815)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1lCrKg-0007PB-4B
 for usrp-users@lists.ettus.com; Thu, 18 Feb 2021 16:59:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1613685532; bh=RTR77y8iYDC5lMWoyh2colBeBMEZUYepCqZMDyERGb4=;
 h=Subject:To:References:From:Date:In-Reply-To:From:Subject:Reply-To;
 b=pDBq+ivd6m4xRWJakdJcR9KGAtikyxbvIzcoayAqzJ7e6umPemdmRQg01O3eUWfzitDieADzVoH+/BzomounGNBIlSEydAx8ovAFzyaUuvwVcfe+wGktLGIVP0Ckowr4MIkpDb2bm9NG1gwTcOtRh8z06sYxi/SGBueH/jQgIdrXRChVOkwjZVdyuJM8z9W4CvZe9ch7kei295FexdG/65+7f5/BVTTzAQhb8SFX11X34UVZTXzG4En4QPprNLTVp9XJYshSr8DChokLBy1Jitc4siCWrip711kI+sQjBlYLu3PXW/6S3VUThEMZNqFzuRkrpiOzzjKt/0Dd60lyMg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613685532; bh=Iv1BjgfnC6vAWwDmlErXx5lhocGTHc6PVlR8RmvwhNj=;
 h=X-Sonic-MF:Subject:To:From:Date:From:Subject;
 b=G+JMl6AZoVI1mXQ8SAZuwZoGObnl1NNWqvK1oLnQA8sbumCv5mLpZqSAR5xxmfvoUqP2QzJ+LQQjGwSUxFldSu/hjgzhUh/NXY0TtYVZb0T+ioW8e0hPdiIM6qP53mK93k3wzY+I9RsUv3GzETfXnr4XG9B2xmsdzPQpg5ej5QU6EcaBRLXWHptFaEl25Lkygg2eRvugYf5ucqGSoFiQuolY+k1RtwilIEfV63d+gwsZqjitpA9niYnvMSnmeRTkOXAIrpJ6xRN/OSntuNdwHz4pz2xVe31SYor7e4UXdZn862HS1JzgBYdn8pkKOBXokCCds8BLmoHhULVArFQ9/Q==
X-YMail-OSG: KC3pO6cVM1mO4.vflUkjWnorwCazuDfn7KaE9525ePkrInkCTpq5Kp39pXMommv
 6WngihxpAUO9g6GEQj79GlqBFdykTl0Kti1eT3QaA15YQbcZWJYcZt6f.OW1z.84.7lk3NdEHE87
 AWtwY7wkIWNB2TzBj0hSFOCBDrOytWcLrFEAO51N4aqQvrCk2ry4fdW.TPMOomEFjeCO7RRDkBmg
 SHKi2qvNLaxIBKonzDgR3jFF8e5iB_ncpVyJhIa8Log51GHfHwd1Kj6nsQChNU8obrhp.faptGqa
 XkyiPg2m1S36GF_6_Def7T9sf3z1k1VN81n.CDnLUYz60vpjYtFqm_Qt1XMyxmS5h4ILHEEgngrP
 cAyagzqcTxOb0kSfCInrC.7Dcp0beIKjEwv3guSliluHdVQMA0sEDmf8ArT3wx796OJT1L5tld09
 bl7bXY5yj.Us2D.s7vAyn2qr0.LUogRuQEwqIt1xKUhsZorKtIqCx9CNLgXqBdYuUBB8VuCMl3ql
 wboyxqa59Z7Sn2Oj1oNQKPQyyUfAhV1Sp1VbSm2ST7gimjwTHhy0Fd4rj0ASmARrpo0wONg0DGvk
 pC8TOUjbdDwNpSXxZZD1DoFC5k9vXSslYUlKA.nq3Zh_.4hqnkX00dv4JTyQYt7NlA_zFfL_k6Dg
 SEHaI1YRAhy0c7N35eBlUuGsCwiw68iy2kZ.oEA.xcTd0TAz5CXf2w3ZpdAotuJTeRvaAGognmTL
 IbyIz19uazIapEtOP8OyRmB1s6p4SwrZSmeCfgnsxwPe_h7CLf6pvVQmWtC3FpZyQEnQVegRJqb7
 ccHQKjJmr0EiGK1D.CCpSzpcWq8uufGuqJHoTp3GKDoDlud00hmIDaubWZ.cUoSDmAeDcY2Kq.vx
 OyCWOwaBrEnDtE1Ll_X8n.Q75IZ3vEKaVtw7uZOnZxZXAyrNWxpSBvj.xiJJqlc7RedOf7jUrq09
 MgDaeylpezyu4eOQMU32Zeut3YWGaUVxSPpTYitB1CLaitYSGB6ZFd.5IxpwEvTJ3YBEzjGskr9_
 2rYLFuB17CNyDWWBDGsaOpb9oqUq5BsMKTRcRo9Jzn_5uUhSQlSnkgel7uvI8QBK9XrebXha1mrs
 quCWy4s19RAWPIZSAwPCcegLe5ZjparZn1yV7Co2NgEj2uo8L9lVbUQzpRdIwOj7bECR79wkqzFM
 vmS_rI0CgJOxtjzKUbwA1ZOefmVEGCWQdQwP61Qbn3n0c_ctObTTU9lzr4gdK1TtPRKYehIJS7pk
 2ujs6dCWPntFH5Za5H25UXa5EwfRUsCBbN6MZLFA1WbDAnkFvQQm4VqZhik5DBB9lMD5O1hO0PBz
 LrfpddSDnpVTF6M4WTCJ_dDMpMaJWnf9CJJtAgxEWLdU13U2r1aSUcGat.N2_RZvny8_DVr.yfHH
 GeZo3aqxIffUlpmKeOMk6ux0o3xWQmL_kQutuw6WRDogTEHFr0s9f_xHAAOuAR6MA2WvMYjkxWCO
 1mRZiqtViZGTv8Q2mbZSs30Jd53LvbWQuioJmXzH.a2dR1CMKDO8bLaOMViyYqXVOP81VlUStb8O
 6_VD2SHYUet8KN6.HXg9zk_V.4uI0miW0oAai27KXbVnSmMbCVGWs86fWs5NBFM.7jHP36YOa4i8
 KvOfqBLME7tA5FQq5wOkgaGSRumlUP_POI32ql0Bo.S4aUSBviMcBZAz6kJCbCBrcXgfpZfYv.Gt
 o_5D0ZYT0KifEGNhpIHghAHdbGZ0yxNLhRZhb8dHfI5K9DvaAXFHUhH4xkzPkU5oQn4BENEijf1q
 WyxRP9nhPXOspVxcV7SZMcH7IbSTM_SeaPPBiUyPnsXYDQPxjqaNZlWJoz4RVKHPqUywdBxTJAY9
 W0vVXBAsuA1KM4nbheCSERoRjJbC5gaf9jxaMy76.0dEe834ddmsK_svfqawSyUXJnEn.rgK3.YS
 m3ucCqE2pjDcq_EgqQDusrApKuUnpphql3xfqOJ7bvFyB_JZoIWh5dMEpeVmKA4PcSUI4a8JhJ0q
 MTWrjEArIJhthrAx3Oo9tvEew8UP2LVRm7ZJBLzRqt5YFuA.qj2I2GBCs1A9vbK2tF2pQNmrMVNz
 Fyx9yHF7OXkarYpvG2mPIYNBOYm8cTbfFZUJqmLZoKQzPIQl9piGrNuWQkFPdpMfIGhvNHR4Eooy
 py6eEQ_VcsCl.b9KX2ujfCiPrBxs9rhnNYJWC5wFIza8Hm38xuUqtcQ9FX5DCjl9qW6aokEMp1jq
 dl9Td6_0Ld0htZ8fHhbtNt89eb7lDvtNVDOuwb1GofWKnZvEE8PDCdL.UYpnkJ6qfqjrjatTyZig
 CKZrPHP86PO_VDJcvfc5lzwdIp5ffCUbHXBmFoPoKRoELFops8bSWrwn.JkdhE5EZLFl_LY5beNH
 l8X9rIxbAzhl5yzXwV6kKlUVR9rllXCm.NmneCMJX4592xwLwBVAXneJb2w--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Thu, 18 Feb 2021 21:58:52 +0000
Received: by smtp411.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID fdbe6cd7e751375365fae6e89dfc7293; 
 Thu, 18 Feb 2021 21:58:51 +0000 (UTC)
To: usrp-users@lists.ettus.com
References: <898c6ebd-9212-2fb7-af2d-862abdf2a41e.ref@verizon.net>
 <898c6ebd-9212-2fb7-af2d-862abdf2a41e@verizon.net>
Message-ID: <87ed1807-3b4e-e4da-4ff0-25294913889a@verizon.net>
Date: Thu, 18 Feb 2021 16:58:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <898c6ebd-9212-2fb7-af2d-862abdf2a41e@verizon.net>
Content-Language: en-US
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
Subject: Re: [USRP-users] gr-ettus cmake fail
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
Content-Type: multipart/mixed; boundary="===============0638202472324316992=="
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
--===============0638202472324316992==
Content-Type: multipart/alternative;
 boundary="------------446FBD9E8009175664DD6BB7"
Content-Language: en-US
Content-Length: 8770

This is a multi-part message in MIME format.
--------------446FBD9E8009175664DD6BB7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Here is some additional information on this problem. Bottom line: Has 
anyone cross-compiled gr-ettus for E310 using UHD4.0 and gnuradio 3.8 on 
either Ubuntu 18.04 or 20.04?

This cmake error occurs with both Ubuntu 20.04 and 18.04.  It appears to 
be an issue with UHD4.0 configurations.  I've been able to cross-compile 
gr-ettus when using UHD3.15.

The CMake error is as follows:

CMake Error at 
/home/mike/prefix/gr38/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 
(add_custom_command): Error evaluating generator expression: 
$<TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES> 
Target "gnuradio::runtime_swig" not found. Call Stack (most recent call 
first): 
/home/mike/prefix/gr38/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 
(SWIG_ADD_SOURCE_TO_MODULE) 
/home/mike/prefix/gr38/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 
(swig_add_library) swig/CMakeLists.txt:58 (GR_SWIG_MAKE)

I've added export 
PYTHONPATH=/home/mike/prefix/gr38/oe/sysroots/x86_64-oesdk-linux/usr/lib/python3.7/site-packages/ 
to the environment sourcing file for the cross compiler. But I wonder if 
there is still some issue between python2 and python3 for building these 
files. UHD4.0 and gnuradio3.8 cross-compiles just fine. It's just 
gr-ettus that is having problems.

Any help would be appreciated.

Thanks,

Mike

On 2/14/21 9:56 PM, Mike via USRP-users wrote:
> All,
> I recently upgraded to Ubuntu 20.04 and am having a problem with cross 
> compiling gr-ettus.
> I have successfully done the following:
> 1. Install UHD on  host (using both gitbranch master and UHD-4.0)
> 2. Install GNU Radio on host (gitbranch maint-3.8)
> 3.  Install gr-ettus on host (gitbranch master)
> 4. Downloaded SDK for UHD4.0.0 (and associated SD image for E310)
> 5.  Cross compiled UHD
> 6.  Cross compiled GNU Radio
> Attempting to cross compile gr-ettus is the point where cmake of 
> gr-ettus failed.
> I executed the following command:  (similar to other cross compile 
> commands)
> cmake 
> -DCMAKE_TOOLCHAIN_FILE=~/prefix/gr38/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake 
> -DCMAKE_INSTALL_PREFIX=/usr ..
> The CMakeError.log first line is this:
> Performing C SOURCE FILE Test CMAKE_HAVE_LIBC_PTHREAD failed with the 
> following output:
> And then seems to indicate that it can't compile a test program that 
> uses pthread_create().  This seems something like test for pthread and 
> pthreads.  I think pthread passed and pthreads failed.
> The log file showed that the last test was for pthread (as indicated 
> by -lpthread on the gcc command)
> The error file had -lpthreads on the gcc command
> Is this something that needs to be disabled or is there something else 
> wrong with my configuration.  The host installation appears to be 
> working nominally.
> Thank you for your assistance and if this has already been discussed 
> somewhere please accept my apologies and point me to the prior 
> discussion.
>
> Thanks,
>
> Mike
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------446FBD9E8009175664DD6BB7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Here is some additional information on this problem.  Bottom line:  Has anyone cross-compiled gr-ettus for E310 using UHD4.0 and gnuradio 3.8 on either Ubuntu 18.04 or 20.04?
</p>
    <p>This cmake error occurs with both Ubuntu 20.04 and 18.04.  It appears to be an issue with UHD4.0 configurations.  I've been able to cross-compile gr-ettus when using UHD3.15.  
</p>
    <p>The CMake error is as follows:
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">CMake Error at /home/mike/prefix/gr38/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:418 (add_custom_command):
  Error evaluating generator expression:

    $&lt;TARGET_PROPERTY:gnuradio::runtime_swig,INTERFACE_INCLUDE_DIRECTORIES&gt;

  Target "gnuradio::runtime_swig" not found.
Call Stack (most recent call first):
  /home/mike/prefix/gr38/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/UseSWIG.cmake:559 (SWIG_ADD_SOURCE_TO_MODULE)
  /home/mike/prefix/gr38/oe/sysroots/cortexa9t2hf-neon-oe-linux-gnueabi/usr/lib/cmake/gnuradio/GrSwig.cmake:137 (swig_add_library)
  swig/CMakeLists.txt:58 (GR_SWIG_MAKE)</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">I've added export PYTHONPATH=/home/mike/prefix/gr38/oe/sysroots/x86_64-oesdk-linux/usr/lib/python3.7/site-packages/
to the environment sourcing file for the cross compiler.  But I wonder if there is still some issue between python2 and python3 for building these files.  UHD4.0 and gnuradio3.8 cross-compiles just fine.  It's just gr-ettus that is having problems.</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">
</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Any help would be appreciated.</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Thanks,</p>
    <p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Mike
</p>
    <p><style type="text/css">
p, li { white-space: pre-wrap; }</style></p>
    <div class="moz-cite-prefix">On 2/14/21 9:56 PM, Mike via USRP-users
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:898c6ebd-9212-2fb7-af2d-862abdf2a41e@verizon.net">All,
      <br>
      I recently upgraded to Ubuntu 20.04 and am having a problem with
      cross compiling gr-ettus.
      <br>
      I have successfully done the following:
      <br>
      1. Install UHD on  host (using both gitbranch master and UHD-4.0)
      <br>
      2. Install GNU Radio on host (gitbranch maint-3.8)
      <br>
      3.  Install gr-ettus on host (gitbranch master)
      <br>
      4. Downloaded SDK for UHD4.0.0 (and associated SD image for E310)
      <br>
      5.  Cross compiled UHD
      <br>
      6.  Cross compiled GNU Radio
      <br>
      Attempting to cross compile gr-ettus is the point where cmake of
      gr-ettus failed.
      <br>
      I executed the following command:  (similar to other cross compile
      commands)
      <br>
      cmake
-DCMAKE_TOOLCHAIN_FILE=~/prefix/gr38/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
      -DCMAKE_INSTALL_PREFIX=/usr ..
      <br>
      The CMakeError.log first line is this:
      <br>
      Performing C SOURCE FILE Test CMAKE_HAVE_LIBC_PTHREAD failed with
      the following output:
      <br>
      And then seems to indicate that it can't compile a test program
      that uses pthread_create().  This seems something like test for
      pthread and pthreads.  I think pthread passed and pthreads failed.
      <br>
      The log file showed that the last test was for pthread (as
      indicated by -lpthread on the gcc command)
      <br>
      The error file had -lpthreads on the gcc command
      <br>
      Is this something that needs to be disabled or is there something
      else wrong with my configuration.  The host installation appears
      to be working nominally.
      <br>
      Thank you for your assistance and if this has already been
      discussed somewhere please accept my apologies and point me to the
      prior discussion.
      <br>
      <br>
      Thanks,
      <br>
      <br>
      Mike
      <br>
      <br>
      _______________________________________________
      <br>
      USRP-users mailing list
      <br>
      <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
      <br>
      <a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
      <br>
    </blockquote>
  </body>
</html>

--------------446FBD9E8009175664DD6BB7--


--===============0638202472324316992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0638202472324316992==--

