Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDB62AF90A
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 20:28:19 +0100 (CET)
Received: from [::1] (port=50584 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcvmz-0000kl-1L; Wed, 11 Nov 2020 14:28:17 -0500
Received: from sonic309-21.consmr.mail.ne1.yahoo.com ([66.163.184.147]:37960)
 by mm2.emwd.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <mikerd1@verizon.net>) id 1kcvmu-0000d7-Nq
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 14:28:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048;
 t=1605122848; bh=qWnGDfYpjnnk8i4bp1jP3KCd7fjqRV1gUuHN+4tKdNs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=uL9zqt64hqISC3eHeoZnXjaMk09lAgXnpsaxzV4vx3ElwAz5KM1JTPaVB33quDTqRu2JnXpdBjBVc0/vHgpeBu+mDrFMRZtEgM3gkVXmXjxmCbkCoeRO9MdIh1b+FOmKFN19nufJXHWA+pvnLZxPhLZDbowbOKsDsJTUeXSOZasoG2Nl3JDSKFXuECx+Vo1C+vbyFSG6xGG/eA3aqbBH4Kbur4BMMaMeCm1K/J84jv+XRK9HUYY6ldAf3poGRq6mGE+g2EzDCSFnYmid7+UfHEO8xKjuIxnK6Fm5YjgUDv5u2yaiEnsJ6zVI9UvfnNF7Cegnqko9gM+5RnxxQyuv8Q==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1605122848; bh=lJ8IShoAF7XSnsUQUqwl8sJcfh+MV1DxIWSRxNRw03I=;
 h=Subject:To:From:Date:From:Subject;
 b=OaREA8FXwVSGwDfmgvC/iGPD9mjYE+aU6fz2y3KJI1UqlktKW8yROwV/AZhQH61SfIJY7gX9RhyXDop3EoixuItOEaUh7805vbVeS8jA+FM2b2cHJjz8xi5WHO8XEFhKM2YM/CXxrHVISLtjQ0Lz09CfhQprRxCxC0LYJkxVQZmS61I2Eux7kgaFN48MtKQ1gTup6+of4TOLCYj7d7SkLOaWzZ5oKIGOyqliZd7kDECgJiICF0fptPx4UCBBnbtqIPrrTqC4uDZqzc439ZcwQSd96+LeF0Uq8I6+M+jPzdHM+raLU/dfF5qrvAnsppoAwr4k6t4fuzJPfWN0WaGpUA==
X-YMail-OSG: t6jnGI0VM1k9DAqSzXUs0d4ddDjTk1sAhLH77j2D1mHYXbeJ1LlHDOjoEzHkDPg
 UeCV5gBCXwcFzWB4PT6XHNi4EmZpJ99249P8KOJyAy_2fMshEa1jbUGkL5JqjXQJc7omZqt39Dcx
 YcqqpFf0T4GW30Mpy.TZqLFwnrJbCo2RJRqEZYaKDH8zaowEserCJ_Yr5cbVIX9J2v97tSRLZP4X
 svi5Kwcq3utaFKzrTKret1iLkN_pIwUPb2UQTS31x3ygoZVUTBt_oLqg7J84SG8tH_NVb4cHyLDa
 bgAKmlN4k_L1unr9VzKZn2E65gf7BpsHiTWgCIDaWlgFTAI4rV959v0Zgi3eagkrswQWIsFUzXhU
 Lf0Mp6sJz_WHq7Ga0dqsIDCL9E9vxVbQ5RX.ZTDhxUzzNsdfjXN1XWV9uCyQtigGGTKK_2YWDjUX
 x.aR.iReVScPLnY_B5331Vskkr03vtHLv0nkHRxPfqLkPde59iTInML6P.ht9B6QgskNgDGw3jCx
 yj2gowf3UqkIdFvRuSt3yJmiXy_C1KZMhKolEBYxl6vbUciTSW.Thag7UH86OoDFENwnW9rq6Xu6
 ufrMKo0FDWq6BETmTvopjm.E9QiZjEyenLiWy26zEBEtTNb8r1Q6s0c7Vvow2TmjkyLoL9RM6jYM
 Dmsdlsth3en2BxUZbbPXiDwS3XULr_RniOVzzVNqDFr.JB7WXP9HNkUsVYTKxhx_qOP3RxWBLvsV
 DdHCpdxfVJIIZJQmATaYDabH5KTROubTW7JSOItv2Kbmdn.GC34JkuBZlSzb_z_1mgh2FydRPPii
 AwxLtbmYR6VTDntBjFHymEQ3pZ_AIqdvs2sEjRrBO.fDJfAfFCtPuo_MIpZAy2dmiEWn95leFBq9
 VVcEtE6K1zfNwRVR2ALc4m.yZz4fOut9Jjt.8qt6Kvm91dDDxL5sggX73kHd3quPa4IT9TV4FkWv
 k7I14YZj2zuF90mGf3Aa7.IK8aLb7ctRolk3P99aMe8mWpoZQ3vcFbYLGdzX_qahVjmfCkVJ1Ehr
 vCne5B41mh7_sMPnZukrNn68hdNcVjgidPP5vfnJ_cQqUuEbNSaQ74abuxfmN42OUQqp4m6oc1T.
 kpIRChzbBFPq3Zni0QugUzRh4IY1GTeDV5InF2kPNwgA9fDDH65uwc1g629_NiuBjea4_ActsvYU
 CGMiCzpo71.GV5vjM2zVAJqyw0PVtilqaMxkW.Zqa2PQQiwoAz9pxXKWOwhLPoUo61wuZbXJrC1E
 q1J0OD62eTXbRxmHlIUCcbd5lc.eW2KSopt2Donsky5V.066flGdwTjx5g9VyD80w9F7dZ3wEwDz
 EWYc42fAe0Cht8i3xpRq0okSTPEH7Iavexp9Ee7bT8dtu7QmR7n1mBIS2RHhj1ErtLcdsx8WNPYf
 7XM4g5VTIsLAOASmUIC4Y7jmBB.CPnAJYaqo9qjyww3xvGDZIHuLnLQ87d_y5J3hG3mvOT5JE3BD
 NG_hbjFKxtP75MNKF57Q30EJDfZYB_YcapGBHsJshPyhWfXLZntprmX2qTO6.991zOnJ32P65.35
 FLHG9UFu3tHozw1DhEUqgLrDbpC5WFfpR0xQ3gCoOcupaZbRsw89QfsuDh.s2OvZJLlOQI.TO20x
 rL9SexAQuvhFq.bvq2y5lRsgua74uVw5CcNeqW3ewc9z04WN1Dwzbg.K80FNpgKDIwsGmlXyf35g
 TGgsjHsbygwmjB9ehYPUiexXkdBTHdm63FxHnmJqe.5Nt3CcF9qVKq.dpFoL1Kg_.qJ69EnWFAC.
 1ctzE.8wJSCPxfxmtIUd.4dPI37PZpUuBi88zJXumEgcLBGwPHCofbwtMqFFDbaHww0uMEcIuaTj
 8IgxLEm66aVVkUU6mWR2TD_qpYu4HEPrXtPUmca8BXH2hu_bLS16kCIMdHOhXxBqiKHqnlBjK98b
 huMi6SGGjr2ozi7BWaZRmc95IqZdFMNRIKKTj1F.bt2HgV1kzzE9uqfoVl7piWqqDlen44WlN4U8
 sa.GhcFWmZokM3XiBPW3gmsUpKIOEDqXduHRARcLst6K1Z5vhxlJt5jkMcxsUUzeHyqY3IQjI6eO
 vZbM5_qq7zfvz.ESq1ypM7Avx_ocq3UsvhnmexKlJaHeAN9CevuMDsF8mQk1j27urc4IGJEx_L7j
 v_igQnviUiJw9o72OBOlG3DARz0AfFIYDyX2wEUzHgyzmDPTP.RV7OOn4qUo4qecOGxuD7sMI.GZ
 iL34hkkvJR6uOV8YrSwMO86E2ZGVwrDuwEXwCwVEFm8t14zgK_SOahvpChBPW9kscyX1seKMlJ89
 rnf2vj_lCkS4q8LnZdAfeWvb7zY8i5WC3v1t3LnNzQowoAH1oeVaZ0UzjZKWvqiHMP11sPz9JISU
 tRkUtgaETUupVrPxctXB3YqjVRvN.LRhJiEyjZn2gRErIZt6pDJPQQ9N.v0SGSEVWztL1oy6MU25
 B5gaOuevMtzI9euBRBXp5tNBKWr.28FdudH3Wbk5kczRGcGyDXedkKizkoU3_e4H4.Kj0u9lq3zw
 _.RdXZEUE_Ro8vcLbWIpP7LFsM9p0cBDvcLTo2Lo0Mcxag88KTiaRi5u_vNYePM273bdWZ2zSaPj
 lxpOkFd3RQ1DgZ81FxxEN3vnDCjBif2Triy.fH3B0Jp__Dqogdz6e7I2RflsRv6pQpo8B_0DSrfR
 xYoAaX_SY8o7e9ZSzaeexlmG8nx5SmwtAbg4ST9lxUNp6KjtPt4ZUU4ty0dEHJ1cLOg6yHjnLoey
 8bOo07Qr5AkwqsysI_w--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.ne1.yahoo.com with HTTP; Wed, 11 Nov 2020 19:27:28 +0000
Received: by smtp414.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 749d9541ef5a0ac27a2a1f48865880fa; 
 Wed, 11 Nov 2020 19:27:24 +0000 (UTC)
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
References: <5d7fbe13-20e4-a896-ee16-24065d4bb8fa.ref@verizon.net>
 <5d7fbe13-20e4-a896-ee16-24065d4bb8fa@verizon.net>
 <CAB__hTRLAWb4+ons7BfioVcxjQdB5E5oYRT3k1AcLcXOcU28xQ@mail.gmail.com>
Message-ID: <040978bf-579c-9d4d-1a2c-b80ea9e66ae1@verizon.net>
Date: Wed, 11 Nov 2020 14:27:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTRLAWb4+ons7BfioVcxjQdB5E5oYRT3k1AcLcXOcU28xQ@mail.gmail.com>
Content-Language: en-US
X-Mailer: WebService/1.1.16944
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.8)
Subject: Re: [USRP-users] RFNOC - noc_block_gain not found
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
Content-Type: multipart/mixed; boundary="===============3287271837679600251=="
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
--===============3287271837679600251==
Content-Type: multipart/alternative;
 boundary="------------752C5998A5F74D36E80D5017"
Content-Language: en-US
Content-Length: 7781

This is a multi-part message in MIME format.
--------------752C5998A5F74D36E80D5017
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Rob,

I am using UHD 3.15.  Thanks for pointing me to the section in the 
...builder.py script.  I noticed that it is finding the source files 
correctly and generating the include file "Makefile.OOT.inc".  However, 
the include file was not part of "Makefile.e31x.inc".  I did a grep 
search for Makefile.OOT.inc and found it in the n3xx and x300 
directories.  So, when I added it to the e31x directory (i.e. in 
Makefile.e31x.inc) the build script was able to locate all the source 
files and Vivado was able to continue its build.

Thanks so much for your insight,

Mike

On 11/11/20 9:48 AM, Rob Kossler wrote:
> Mike,
> Are you using UHD 3.15?  If so, I suspect that UHD itself is the issue 
> - particularly the uhd_image_builder.py script. My own experience is 
> that starting around 3.15, some things changed in the 
> uhd_image_builder.py script and caused issues in finding OOT files.
>
> Take a look in the python create_oot_include() procedure and you will 
> find an if/elif statement that looks for Makefile.inc or Makefile.srcs 
> in various paths in the OOT folder such as rfnoc/ or rfnoc/fpga-src.  
> Attached are the files Makefile.inc that I have in my rfnoc/ and 
> rfnoc/fpga-src folders. You could modify these for your own specifics 
> and re-try the uhd_image_builder.py script.
> Rob
>
> On Wed, Nov 11, 2020 at 9:15 AM Mike via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi,
>
>     I've been going through AN-823 (Getting started with RFNoC
>     Development)
>     and have successfully gotten through the point of simulating the gain
>     test bench with positive results.
>
>     I'm attempting to build the FPGA now with the new OOT module. I've
>     successfully built with only pre-existing modules and seen it work
>     in my
>     hardware (E310).
>
>     My command is as follows:
>
>     ~/prefix/rfnoc2/src/uhd-fpga/usrp3/tools/scripts$
>     ./uhd_image_builder.py
>     gain ddc fft -t E310_RFNOC -d e31x -I
>     /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/rfnoc/
>
>     I used the gui command ./uhd_image_builder_gui.py but it does not
>     create
>     the correct device type (-d E310 vs -d e31x).
>
>     I've tried using "-I /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/"
>     to no
>     avail either.
>
>     So, it seems like I'm missing a path somewhere in the makefiles that
>     keeps it from finding the OOT source.
>
>     I know this is probably basic makefile stuff but it's not basic to
>     me.
>     I'm just an FPGA guy.
>
>     Thanks,
>
>     Mike
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--------------752C5998A5F74D36E80D5017
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Rob,</p>
    <p>I am using UHD 3.15.  Thanks for pointing me to the section in
      the ...builder.py script.  I noticed that it is finding the source
      files correctly and generating the include file
      "Makefile.OOT.inc".  However, the include file was not part of
      "Makefile.e31x.inc".  I did a grep search for Makefile.OOT.inc and
      found it in the n3xx and x300 directories.  So, when I added it to
      the e31x directory (i.e. in Makefile.e31x.inc) the build script
      was able to locate all the source files and Vivado was able to
      continue its build.</p>
    <p>Thanks so much for your insight,</p>
    <p>Mike<br>
    </p>
    <div class="moz-cite-prefix">On 11/11/20 9:48 AM, Rob Kossler wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAB__hTRLAWb4+ons7BfioVcxjQdB5E5oYRT3k1AcLcXOcU28xQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">Mike,
          <div>Are you using UHD 3.15?  If so, I suspect that UHD itself
            is the issue - particularly the uhd_image_builder.py script.
            My own experience is that starting around 3.15, some things
            changed in the uhd_image_builder.py script and caused issues
            in finding OOT files.  </div>
          <div><br>
          </div>
          <div>Take a look in the python create_oot_include() procedure
            and you will find an if/elif statement that looks for
            Makefile.inc or Makefile.srcs in various paths in the OOT
            folder such as rfnoc/ or rfnoc/fpga-src.  Attached are the
            files Makefile.inc that I have in my rfnoc/ and
            rfnoc/fpga-src folders. You could modify these for your own
            specifics and re-try the uhd_image_builder.py script.</div>
          <div>Rob </div>
        </div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Wed, Nov 11, 2020 at 9:15
            AM Mike via USRP-users &lt;<a
              href="mailto:usrp-users@lists.ettus.com"
              moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">Hi,<br>
            <br>
            I've been going through AN-823 (Getting started with RFNoC
            Development) <br>
            and have successfully gotten through the point of simulating
            the gain <br>
            test bench with positive results.<br>
            <br>
            I'm attempting to build the FPGA now with the new OOT
            module. I've <br>
            successfully built with only pre-existing modules and seen
            it work in my <br>
            hardware (E310).<br>
            <br>
            My command is as follows:<br>
            <br>
            ~/prefix/rfnoc2/src/uhd-fpga/usrp3/tools/scripts$
            ./uhd_image_builder.py <br>
            gain ddc fft -t E310_RFNOC -d e31x -I <br>
            /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/rfnoc/<br>
            <br>
            I used the gui command ./uhd_image_builder_gui.py but it
            does not create <br>
            the correct device type (-d E310 vs -d e31x).<br>
            <br>
            I've tried using "-I
            /home/mike/prefix/rfnoc2/src/rfnoc-tutorial/" to no <br>
            avail either.<br>
            <br>
            So, it seems like I'm missing a path somewhere in the
            makefiles that <br>
            keeps it from finding the OOT source.<br>
            <br>
            I know this is probably basic makefile stuff but it's not
            basic to me.  <br>
            I'm just an FPGA guy.<br>
            <br>
            Thanks,<br>
            <br>
            Mike<br>
            <br>
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

--------------752C5998A5F74D36E80D5017--


--===============3287271837679600251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3287271837679600251==--

