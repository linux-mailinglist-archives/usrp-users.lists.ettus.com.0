Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2D06C5963
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:23:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E176384545
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 18:23:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679523814; bh=zIkyfWfxftOhcpLRVILM8wjRXyeY+7WrsNtnMx852Lc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=znhFU1QB26cB6AUfFmxTckimYkaM1YQwyLbuKrDkeTTIviUktJZbj8rht54mhWeLr
	 zmxQjjp98XO3f136H+QFkuWGt5KfKR6aV+maf05AfHKjoBRrGcjbya7Ni79GX+hcCl
	 +sDI3ai1wYURI+tdlpoy4CLOijo+u0sHrxtuAAa7xtwKdCBWeyg5aEav1WUcX7uQbo
	 2GmfaQJwPh8HxIbSmf+prYylJsgMjxJyKPJTHZ58x410rGdy7OfIZeibZLsZ6JCRuc
	 WkFcrHpPR6b0orlfCAUiUCdcMt5WxLGR4U/XF3wsK7NDnEw2kIE64ni2JTvfk52iCk
	 r6aXG+d8RYBsg==
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 48A46384031
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 18:22:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="ts6Dsz+v";
	dkim-atps=neutral
Received: by mail-wr1-f54.google.com with SMTP id o7so18619134wrg.5
        for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 15:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1679523763;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Gi8msWGlTH4P13hU4AKuAg3airL4R+EPtpsWYP1Unc=;
        b=ts6Dsz+v9aMLvLlIj23i94pg/GeYbyp+DZSS4o6nfIdJ05Vj6uWfEoiCs+m7PzEhMQ
         CxMgmVh+HOlhlUj68lPfx30w9Vp0boyGdw560VkQ798zSrz2niLmbDy7r5y1k2qua1Q3
         b8TIa2/kx9kmI+Zr3YIuIPL27hr+oRJPKjbrQNt8LWbpo1lr4NVlyUdNJKL1owwRuGV6
         btn4KHErEGLRJFTewLLPgWuk+G3dOvT6n6hSKVo9ILXB8GQzFOD3op7D0ZPAifMwyMmu
         MRoMVS2dkDqO2DJUuwI8N7iQ7j3x/0jMg18WSKCwtdZKrEEEeBRFcOXNsogRcaLvmVTH
         VPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679523763;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+Gi8msWGlTH4P13hU4AKuAg3airL4R+EPtpsWYP1Unc=;
        b=H8KB5pjbi8J4QRZogrhWsDCTNbZDbtsic8NdmeQ4QSXPxiW6YejncdeOwmUgNQDWBn
         swLvaHDfdBzgrFUC2S26+KWdsHxVKKCQm5lyFA+36kyc6vDidfc4cJPpF6V3fCN8bz7/
         ctpiv9MQC5AUPREyKdGCA3c3FX0NLoFgixlEIlb8XFa3kBt2C7C1LJYA5Gzcss79ql60
         VgTfN9Zev4a1UFPVYgjv/94UYY7aHMv2KA1ShxY9HCQgWIDaliKwY1AmK8AAagy4tiwx
         nx+GYLLr1Z8VczApeMZEzY0scQqqulEjxxBn8yhoiPGFwFW5R0sPwE2yDdEGrLUWGIiD
         Yz4Q==
X-Gm-Message-State: AAQBX9dVMW+LpmpORILd0DzqbXh1S9F1sIAb9hrJGo9DVPUV7yKCZof2
	cqwswcSWSmSL6OA2959wxXWI6/waxQvgd40F9rAUJg==
X-Google-Smtp-Source: AKy350YjRmDB+BESMuAtWGB5k+uMIFkAqWLtT37nfoq86xuA+E/FbboPiKckt277+koEixHDhgJFYQ==
X-Received: by 2002:a5d:525b:0:b0:2d6:cc82:3c49 with SMTP id k27-20020a5d525b000000b002d6cc823c49mr1124276wrc.13.1679523762652;
        Wed, 22 Mar 2023 15:22:42 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3855:a600:c317:6064:27d7:e952? ([2001:9e8:3855:a600:c317:6064:27d7:e952])
        by smtp.gmail.com with ESMTPSA id c10-20020adffb0a000000b002c70c99db74sm14716379wrr.86.2023.03.22.15.22.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 15:22:42 -0700 (PDT)
Message-ID: <a1e76c5d-18f7-7bef-600b-5affdf16fd7d@ettus.com>
Date: Wed, 22 Mar 2023 23:22:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ettus.com>
 <a8c9f29e-13e3-dd43-221a-cd27382fdf36@gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <a8c9f29e-13e3-dd43-221a-cd27382fdf36@gmail.com>
Message-ID-Hash: 5B5GKLAOY45LCAQEPRR6VCGJSXRHVT5Y
X-Message-ID-Hash: 5B5GKLAOY45LCAQEPRR6VCGJSXRHVT5Y
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5B5GKLAOY45LCAQEPRR6VCGJSXRHVT5Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8115850847468589344=="

This is a multi-part message in MIME format.
--===============8115850847468589344==
Content-Type: multipart/alternative;
 boundary="------------fVl7eepEZJSlBiWLx7RZzDIR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------fVl7eepEZJSlBiWLx7RZzDIR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

don't have a device to test with me, but don't forget that the *tuning* t=
o that frequency=20
might be technically possible due to FPGA frequency shifting, so that ind=
eed the frequency=20
10000 kHz gets shifted to baseband, 0 Hz.

(You being able to observe the LO hints at that: the "physical" tuner doe=
sn't go as low,=20
and the remainder of frequency shifting is done digitally, so that the LO=
 doesn't end up=20
at 0 Hz.)

However, this doesn't mean that the analog signal chain can actually let =
through that=20
frequency. In the end, the N32x has an RF frontend, and its DC response i=
s undefined/bad=20
by design.


You can probably work around that, but it depends on your use case: Why a=
re you trying to=20
observe a 100 kHz-centered signal with a device that has a bandwidth thou=
sands of times of=20
that? I suspect you're on to something interesting!


Best regards,
Marcus M


On 22.03.23 23:12, Marcus D. Leech wrote:
> On 22/03/2023 18:06, jmaloyan@umass.edu wrote:
>>
>> When the frequency is called back, it gives back that it is set to 100=
 Khz. The lowest=20
>> it goes is 5 hz.
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> Your command-line is here:
>
> |./rx_samples_to_file --nsamps 3000000 --channel 0 --ant "RX2" --subdev=
 "A:0" --gain 50=20
> --rate 3e6 --freq 100000
>
> Which means you're asking the hardware to tune to a center frequency of=
 100kHz.=C2=A0=C2=A0 That=20
> isn't possible with this hardware.
>
> I refer you to the datasheet here:
>
> https://www.ettus.com/wp-content/uploads/2019/04/USRP-N320-Datasheet-2.=
pdf
>
>
> |
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------fVl7eepEZJSlBiWLx7RZzDIR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>don't have a device to test with me, but don't forget that the
      *tuning* to that frequency might be technically possible due to
      FPGA frequency shifting, so that indeed the frequency 10000 kHz
      gets shifted to baseband, 0 Hz.</p>
    <p>(You being able to observe the LO hints at that: the "physical"
      tuner doesn't go as low, and the remainder of frequency shifting
      is done digitally, so that the LO doesn't end up at 0 Hz.)<br>
    </p>
    <p>However, this doesn't mean that the analog signal chain can
      actually let through that frequency. In the end, the N32x has an
      RF frontend, and its DC response is undefined/bad by design.</p>
    <p><br>
    </p>
    <p>You can probably work around that, but it depends on your use
      case: Why are you trying to observe a 100 kHz-centered signal with
      a device that has a bandwidth thousands of times of that? I
      suspect you're on to something interesting!</p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus M<br>
    </p>
    <p><br>
    </p>
    On 22.03.23 23:12, Marcus D. Leech wrote:<br>
    <blockquote type=3D"cite"
      cite=3D"mid:a8c9f29e-13e3-dd43-221a-cd27382fdf36@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 22/03/2023 18:06, <a
          class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
          href=3D"mailto:jmaloyan@umass.edu" moz-do-not-send=3D"true">jma=
loyan@umass.edu</a>
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ett=
us.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <p>When the frequency is called back, it gives back that it is
          set to 100 Khz. The lowest it goes is 5 hz.</p>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      Your command-line is here:<br>
      <br>
      <code>./rx_samples_to_file --nsamps 3000000 --channel 0 --ant
        "RX2" --subdev "A:0" --gain 50 --rate 3e6 --freq 100000<br>
        <br>
        Which means you're asking the hardware to tune to a center
        frequency of 100kHz.=C2=A0=C2=A0 That isn't possible with this ha=
rdware.<br>
        <br>
        I refer you to the datasheet here:<br>
        <br>
        <a class=3D"moz-txt-link-freetext"
href=3D"https://www.ettus.com/wp-content/uploads/2019/04/USRP-N320-Datash=
eet-2.pdf"
          moz-do-not-send=3D"true">https://www.ettus.com/wp-content/uploa=
ds/2019/04/USRP-N320-Datasheet-2.pdf</a><br>
        <br>
        <br>
      </code> <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------fVl7eepEZJSlBiWLx7RZzDIR--

--===============8115850847468589344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8115850847468589344==--
