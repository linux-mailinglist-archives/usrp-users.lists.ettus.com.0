Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D9026D007
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 02:38:49 +0200 (CEST)
Received: from [::1] (port=55652 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIhwk-0006a1-Bq; Wed, 16 Sep 2020 20:38:46 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:40599)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kIhwg-0006UL-UO
 for usrp-users@lists.ettus.com; Wed, 16 Sep 2020 20:38:42 -0400
Received: by mail-qk1-f182.google.com with SMTP id w16so500325qkj.7
 for <usrp-users@lists.ettus.com>; Wed, 16 Sep 2020 17:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=J7fUClUCAJ4qN0crmLyuSJsT62dR8qAGJsRrz166Bik=;
 b=lGVuXpTj6VLmkpk16JPDkxw5IU+8wWoqU47u7niNxTWaW559fV9msVR+ghI6OHgn0d
 vAraeKQ18gdOkqiVHEj/v5ZphYHBln3uMAAZ9UiNtUvaxFzDgqTT39crBYtA9O98A/p1
 WLbZdn+gROsYsq4W9nERky6ty25xim3x5Y+QXSj5sgOg3gLVIAPaXM7NxuAminQ3tZEi
 uezyMOTtO12KqXgaty32DQ2E9ceX2T4SQUYdZZfHeiz6F7XGI4LKeSwpmD/7krdTZGlf
 0veaUbfvjQ3EHSpvBe5a6MuN9KY1OdxyDp7inOXN/iSBfbc79D938JMKolUw3ToskArX
 gIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=J7fUClUCAJ4qN0crmLyuSJsT62dR8qAGJsRrz166Bik=;
 b=Eg7Y19O+dWTWRHML3FBEOrJAMgfiNXTTk0dAJNLKWfbvri9caF20+zwD63ssjpgb4t
 b/F8Ne+2vcKdszm7UQ4clI61Y3a3HeWodci43GvBcFNJPhKIcMxltZ+UZDczV1uS9beP
 6KG3yYv2jn/k31E4JPLGVYMiSrfrSyv+wd0XEgUSa5ru1g3bvlDr2QbwhgODuACQyP1d
 E9J1PMQaDlEATQrCuQLtlaB8Irr4zRXnLl5nzL8BxZG+dzFbqg6PJcJwWjt+3sSLuQuN
 PiuAmYbo9XyMeCoz4QVj+HKECWZxQxxHbVC3GAUYFaIhfsA6D2VMjbr6XAiS0Ea6zNnh
 F9Mg==
X-Gm-Message-State: AOAM531mVsLY5TzpiDzGKp36cSoQbVAjWdAc1sAE2BBXNRrDX28H4LHy
 Jx8xPPkl8kurtNwtY72GE4ACJqKEX4Yieg==
X-Google-Smtp-Source: ABdhPJyvJ1fSLDkzWTd2QBBoX0IdWJXjzMPsF1eeK/noWJjjsC0uzemY4FScBz07f07K+f+bH5imrA==
X-Received: by 2002:a37:48c6:: with SMTP id
 v189mr26546403qka.378.1600303082199; 
 Wed, 16 Sep 2020 17:38:02 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id f76sm20486759qke.19.2020.09.16.17.38.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Sep 2020 17:38:01 -0700 (PDT)
Message-ID: <5F62AFE9.5070400@gmail.com>
Date: Wed, 16 Sep 2020 20:38:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BYAPR03MB4678CA6B6C59C6C3CC1FF2BBD3200@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB4678DD52A6F64FCF2081BD33D3200@BYAPR03MB4678.namprd03.prod.outlook.com>
 <5F615D12.4040300@gmail.com>
 <BYAPR03MB46783BF6778A8128B6AB97BAD3210@BYAPR03MB4678.namprd03.prod.outlook.com>
 <5F62692B.5000906@gmail.com>
 <BYAPR03MB467882E1EA3CB16AB84583C2D3210@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB467882E1EA3CB16AB84583C2D3210@BYAPR03MB4678.namprd03.prod.outlook.com>
Subject: Re: [USRP-users] R: R:  R: UHD and GPUs
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
Content-Type: multipart/mixed; boundary="===============0139234255231301197=="
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
--===============0139234255231301197==
Content-Type: multipart/alternative;
 boundary="------------010904020407020405060809"

This is a multi-part message in MIME format.
--------------010904020407020405060809
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 09/16/2020 07:56 PM, Minutolo, Lorenzo wrote:
>
> Yes, that’s basically what we are doing. And we enjoy using the Ettus 
> products because of the versatility: we can do VNA scans to find the 
> resonances and then use a comb of tones to read them out. The basic 
> readout method which uses a single fixed sinewave per detector and is 
> good for very small signals as the resonance shift slightly from the 
> original position as the inductor gets excited. When the photon/phonon 
> flux increases, or you have detectors with higher responsivity 
> (frequency shift per aW), the change in the S21 on the original tone 
> frequency becomes very small and the SNR gets too low. One solution 
> I’m experimenting with is to use narrowband noise for the readout of 
> each detector (a paper should come out next season) but this technique 
> is not very scalable because of the stress induced on the cold low 
> noise amplifier by all the signals (the power level used for readout 
> is not arbitrary). The other technique  is “tone tracking”: the 
> sinewave used to read a detector follows the shift of the resonance 
> itself: in this context the round loop latency determines the maximum 
> bandwidth at which you can use the detector.
>
> Please let me know if you have in mind a point in the libraries where 
> I should start implementing this, it would make the USRP the ultimate 
> KIDs readout. Colleagues at SLAC, Fermilab, JPL, INFN and Caltech are 
> already using the GPU system I designed for lab testing but for field 
> deployment I have to step up this game.
>
> Best,
>
> Lorenzo
>
>
Ordinarily, customers of Ettus hardware who need a combination of 
low-latency and high bandwidth will write code in the FPGA--that's
   what it's for.

I understand that you have special requirements.  Probably the place to 
start is in "transport"  uhd/host/lib/transport/*udp* but apart from
   that I have nothing specific to add.  Perhaps others on the list might.

How subtle is the phase shift?   If you sent a continuous tone to a 
sensor, the output would be phase-shifted by photon flux--would that drive
   a PM demodulator adequately with enough SNR to be useful?  Maybe you 
already do that.  I'm trying to understand where the low-latency
   part comes from.



--------------010904020407020405060809
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/16/2020 07:56 PM, Minutolo,
      Lorenzo wrote:<br>
    </div>
    <blockquote
cite="mid:BYAPR03MB467882E1EA3CB16AB84583C2D3210@BYAPR03MB4678.namprd03.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.StileMessaggioDiPostaElettronica19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:windowtext">Yes, that’s
            basically what we are doing. And we enjoy using the Ettus
            products because of the versatility: we can do VNA scans to
            find the resonances and then use a comb of tones to read
            them out. The basic readout method which uses a single fixed
            sinewave per detector and is good for very small signals as
            the resonance shift slightly from the original position as
            the inductor gets excited. When the photon/phonon flux
            increases, or you have detectors with higher responsivity
            (frequency shift per aW), the change in the S21 on the
            original tone frequency becomes very small and the SNR gets
            too low. One solution I’m experimenting with is to use
            narrowband noise for the readout of each detector (a paper
            should come out next season) but this technique is not very
            scalable because of the stress induced on the cold low noise
            amplifier by all the signals (the power level used for
            readout is not arbitrary). The other technique  is “tone
            tracking”: the sinewave used to read a detector follows the
            shift of the resonance itself: in this context the round
            loop latency determines the maximum bandwidth at which you
            can use the detector.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">Please let
            me know if you have in mind a point in the libraries where I
            should start implementing this, it would make the USRP the
            ultimate KIDs readout. Colleagues at SLAC, Fermilab, JPL,
            INFN and Caltech are already using the GPU system I designed
            for lab testing but for field deployment I have to step up
            this game.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">Best,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:windowtext">Lorenzo<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    Ordinarily, customers of Ettus hardware who need a combination of
    low-latency and high bandwidth will write code in the FPGA--that's<br>
      what it's for. <br>
    <br>
    I understand that you have special requirements.  Probably the place
    to start is in "transport"  uhd/host/lib/transport/*udp* but apart
    from<br>
      that I have nothing specific to add.  Perhaps others on the list
    might.<br>
    <br>
    How subtle is the phase shift?   If you sent a continuous tone to a
    sensor, the output would be phase-shifted by photon flux--would that
    drive<br>
      a PM demodulator adequately with enough SNR to be useful?  Maybe
    you already do that.  I'm trying to understand where the low-latency<br>
      part comes from.<br>
    <br>
    <br>
  </body>
</html>

--------------010904020407020405060809--


--===============0139234255231301197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0139234255231301197==--

