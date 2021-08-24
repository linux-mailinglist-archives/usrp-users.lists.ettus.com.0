Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 022B23F6257
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 18:09:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1C319384828
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 12:09:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="nvjdYLgI";
	dkim-atps=neutral
Received: from sonic308-2.consmr.mail.bf2.yahoo.com (sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by mm2.emwd.com (Postfix) with ESMTPS id BC7F838443C
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 12:08:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629821295; bh=Mmp5hDJn6K77hFLuD5YnqUgijsw4NBDA/bYG8xAVGZs=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=nvjdYLgIv9aSFr5iSwa708mhFiwyAebslIhF3yw5BI6tXda7ORWTxiKhNvtDrtOaPOOD6mWHuMxpQVmzrJp8Rdg5zVJKJ4tBHFXl5BfSW7acol7GuDo28Wfbpw3ccnET1QnFJpTWx4KToVM0iWCmXFP6/GLFR2UAxUJ8KQWg+fqS3n8GjC/a4M7sWscVkJsVpHcoYqXCPNIgNFiucKPvAJ4EcEV51YJibG2XuPTDBTkha3fDEHpH5EmVrcctIDjq+AA4sUeB3sNj0iJRO8K0PS36iC7FabF2aw9T4WbEs2I5bz3VCVD96A20kZi7GOA34CwB6b7/J/lA7KNAZd9IuA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629821295; bh=RROITaPa6lw4Amwnn1+06kcrxjH+ShlHEgvUVcCtCy3=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=sutwww4C5O7opjkKqB8settxsdID2XSPU0o9SFhho/HCrzU6lHZjbe817jtSs3JAfs/yo01FQ2OShVtsu5whSlxMwlnWKdp4XSzlI+MQ1T+R5Lo7WAZILKrVHEFmjLv/ptBfAu3e+ueOUX7aqdHmk3YCFkEk9fOyre3wsh9o8IOSSnJrq49sv1BsRz314LxZf781qhTqDsof9fyXcTmTsJ5EASthtcEh4jWb4NGtWWBk1NiTHRRuIXU3q6qv5PzUOSovByp/Yzkxqh5UY+PPchl8an7v/3bApKAT3KI/rHw5MjJbVLLHfFmJoXHShIAuu8J84kRFij6wpuAkg22JpA==
X-YMail-OSG: R9Bbud0VM1lnaEqhg8_Z6qVugfB6v5F065vbUE_JRQzBscAQzRdqp9zJoJ3SMJc
 9HKLSvJTv2DUYq94R.JBBzIAycl6Lqd8Hq4J_sZVAH866AefGAEjo6C7elvkI_62iV0UAstnhFkn
 m7AIuR0p3EXg2JpwWYOw3mB0NiSD7bk56WRhTU0kOQHFCMa9.YwhwfbrD.pNiztT0XxDwpMRGPKV
 o8BPQb_..vTthmPxJYXneNtfE2Rgy4ZZbrKPNCsbwQAEWV1TgVhtZKt8DAtCUfxP6iSrx7xr2jYc
 R389.HgIr8B21JSfoo7Snpl6ZtJ3k0hSuoJq6a5kmk12ag3Dvevp6xG4bNu84UWi8358z1zAyuEr
 nsOJ08CMwHKqJzC_dD9n3v242mptDjVR8Cb181OfoIgM0Zvr9YdbFQGHxVzZQrUT.1HEy0E6wTb7
 HD8v4UgfxW4n6IKYL90VFgo09D2ialFDMC6KPE3b8l9_HNfQNRB60i027hmH1fO2KQi5hlhgMYXS
 Pm5NBG_D9EmNBNUR22_WT7R9_Vs8Ve74ALEm1y5WYdvlrx69tgM4haamCgpoW6PRM1pbykEHctA8
 W6HqZeDa.la517V1PX0qAtBT.7syFf5Jk3ds44Kv2VBqKdp3fjkmnsFbq0ztFusheR2mJT1XEs1D
 BrTD5pE6xCQnNSpd3wM4f4s3uqBRbFDVbF1M60PvsaBuktfryIYAStUElwiHG3g6x5QkWwBeq05l
 tDflKIOg_bDpxBzwj4ye9rvhF2c3DBMXSX.0UxlhpJon6bmOxredJxMUujNbGJqzO2IPAGh8TzQr
 R_qP_DuDB45r67iIhdOkKIkzoFOUdfFB2A3z2NAEBDcmvvBBwbARQMGr5KlQiH3OwMKkslyGKSXH
 28VkPvt5.n2maiwgakEHwL753HE1mjBQIIHWec7EfsjtJrlahFky5OmVMiQIlRPTiYbxmvf52nAf
 rf1crgFAwU694VTgpNwkHclVaUuVe7P6G4bSyzH2etkBTa6VVuJJBhNEjxxFlTzjqv4.9azg0EWW
 EKxzLXg_OZiABec0G3rBxtFvSnhUX2uljoO3CQkrmHNjVrZRc6YxlOTEHTRMH6hbGDSxQK62JdZI
 AY.pzBK_lwfdtSbicmmB7PFRj8arW_ARKb8t8xxNhmM4_cHsSqcMy0M9fyB4JwHB1h.n8TmAOEe4
 11My2.EkxZ2CZ9HGoA_ILCMha676FIKNMKPgRROvH4wuXUcfDVvep.8gHoZYX6Gq9_jpGO8jte6i
 kwBb5.BkD9xmDaolP6Lo6zobszvs3_0h7_aY62vMCoYS4_CLew.KXO5k7CaRZhzcl8jVBy72POiw
 _u.ighxMH2c0v7Fp6GTs_bDgTB.TPQOoXpVXNPQ3NXRRBuBnIZzDemxPczZfIuvDIuZcMLR8M879
 5afds1.psSuCoetGWQHWApF8DJOFmnzpRrSE99XbMf5XctebdGNTN3pCmAYUZzwUXDqBop0hhbGj
 gd5PTKELBbVMp34mh.x58TJs0EILszQJ1Ra2ITSpnUye6EG_hog0.nqmhH1W92S.jyfH.gJVIRPc
 OEPUN4lEUCu.qtT7h9KrZNJy8N6.lNlJxDABySKdP3aLIKmQM9udGuikRIDaUQSakk3dynDyiTTi
 OR2JZhOO7OlesIHEJpXz2MPrQ705YTx_2xFiNjWSFBaU_qxTWx2IudinpoFOdWGH8u7E8Jdhtmbj
 EmOV9DmLIA36o2KNChRIIwkmb2sZK0DtQbG3glOFwMMqgGyM4kDsc9LtQUVqE9hYJEUh4Hvkj5SW
 wagxsBm_SNeaqx13IOc_yqgxbmlRUmh_mB.pxZvhcOmBVAR2ALubBntijp3DCPGArNK_tjopsVXi
 UgKEnEAdyH2fByXsDIDdwq1A4Utsq6YPYs3ApZoqYqutIcDqXduYBSdB.kd.oVOdSaLwFrRLV7HD
 AoXOJSaiqmQ7QuRw1ia_ivO1AZen3v_4WtG9VWpT5fvG9KVcxDVJqkCBi7ugWK5lPYAyypxYbRN.
 kZ2Ewc7gpLEZNh_JfMGSg0j_m6.6ugJcuBMRQJTPpo2O9PiCPKW6KOYsO64xCeh4CSPxYxWzcj3m
 WpkoSsQMd.DOQ4FM.kvtnxllJBNDywYiONEUa6C13p7vulvl7NJknsN6xLyT2elhYXVIaVfPzJEk
 sVkSr8nB2A8ddyWaggW9VAQMrGZtT4emXjZtRgm.8.CyZPd94G1d.CdzZI3xhkYgCTbOyzMQZ94w
 VUkbEG4B4Av9i4DJo4ZFF6Qo_lSXW5Sb1AIb8O8KcvuQAO9qW9KUTpck3OOJMmsJHuoIynAsXDFC
 yjmjFLxg9Vg2iyybxugs7z13_
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Tue, 24 Aug 2021 16:08:15 +0000
Date: Tue, 24 Aug 2021 16:08:12 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <983558461.158295.1629821292551@mail.yahoo.com>
In-Reply-To: <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com> <1603286005.133827.1629816455930@mail.yahoo.com> <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com> <1800716940.152466.1629819588887@mail.yahoo.com> <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18906 YMailNorrin
Message-ID-Hash: 3VZFIIO2U6LMHTQSV33KLTHCWZW5NKIR
X-Message-ID-Hash: 3VZFIIO2U6LMHTQSV33KLTHCWZW5NKIR
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3VZFIIO2U6LMHTQSV33KLTHCWZW5NKIR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5399436691238533571=="

--===============5399436691238533571==
Content-Type: multipart/alternative;
	boundary="----=_Part_158294_2017583333.1629821292550"

------=_Part_158294_2017583333.1629821292550
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 Yep. Marcus you caught it!! That worked. Do I need to complete the sections on "Compiling MPM Natively" and "Building UHD"?? I understand that I need the cross-compiler for compiling SW for the device but I don't see the need for completing the other two parts. Is there something additional that needs to be done other than cross compiling on the host machine and ssh'ing over the executable? 

    On Tuesday, August 24, 2021, 11:51:09 AM EDT, Marcus D. Leech <patchvonbraun@gmail.com> wrote:  
 
  On 2021-08-24 11:39 a.m., Tellrell White wrote:
  
 
 The following step under "SDK Usage" 
   $ . $SDKPATH/environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi

doesn't seem to be working for me. I'm assuming $SDKPATH is the path used for installation since I haven't seen this discussed anywhere else in the directions. I get the following printout. 

tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ . usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabibash: usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi: No such file or directory 
   Looks like you're missing a leading "/" on that filename.
 
 
   
------=_Part_158294_2017583333.1629821292550
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div class="ydp967d6306yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>
        <div dir="ltr" data-setdir="false">Yep. Marcus you caught it!! That worked. Do I need to complete the sections on "Compiling MPM Natively" and "Building UHD"?? I understand that I need the cross-compiler for compiling SW for the device but I don't see the need for completing the other two parts. Is there something additional that needs to be done other than cross compiling on the host machine and ssh'ing over the executable? <br></div><div><br></div>
        
        </div><div id="yahoo_quoted_0312149291" class="yahoo_quoted">
            <div style="font-family:'Helvetica Neue', Helvetica, Arial, sans-serif;font-size:13px;color:#26282a;">
                
                <div>
                    On Tuesday, August 24, 2021, 11:51:09 AM EDT, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id="yiv1148932862"><div>
    <div class="yiv1148932862yqt6632109372" id="yiv1148932862yqtfd47238"><div class="yiv1148932862moz-cite-prefix">On 2021-08-24 11:39 a.m., Tellrell
      White wrote:<br clear="none">
    </div>
    <blockquote type="cite">
      </blockquote></div></div><div class="yiv1148932862yqt6632109372" id="yiv1148932862yqtfd70797"></div><div><div class="yiv1148932862ydp829e9487yahoo-style-wrap" style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div class="yiv1148932862yqt6632109372" id="yiv1148932862yqtfd68003">
        <div dir="ltr">The following step under "SDK
          Usage" <br clear="none">
        </div>
        </div><div dir="ltr"><div class="yiv1148932862yqt6632109372" id="yiv1148932862yqtfd17740"><span>
            </span><pre class="yiv1148932862ydp989e7542fragment">$ . $SDKPATH/environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi

doesn't seem to be working for me. I'm assuming $SDKPATH is the path used for installation since I haven't seen this discussed anywhere else in the directions. I get the following printout. 

</pre><div>tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ . usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi
bash: usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi: No such file or directory

</div></div>
          <br clear="none">
        </div>
      </div>
    
    Looks like you're missing a leading "/" on that filename.<div class="yiv1148932862yqt6632109372" id="yiv1148932862yqtfd07168"><br clear="none">
    <br clear="none">
    <br clear="none">
  </div></div></div></div>
            </div>
        </div></body></html>
------=_Part_158294_2017583333.1629821292550--

--===============5399436691238533571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5399436691238533571==--
