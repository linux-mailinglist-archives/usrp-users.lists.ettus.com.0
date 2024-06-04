Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 013598FB493
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2024 15:58:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E718F385147
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2024 09:58:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717509531; bh=JlZ+zledhtAeCEhbYTLALQ0iLM+I/IwfykKQHOWpInI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uF4THtdEBZ5QF5x9Bj7Mg7Tj6vrFqE+JgHwCB+84SOYSaSuF8Mw5AbxpTG5GDWi+5
	 +NYNTtx+lrguhaF0aZDKwl0oC88mjfVZ+BDpv6dt89AOlJWSJGkUwYqA4qOTjJudN4
	 /Lb5CL8i9Sizy/hiUVEIDkIyB55VQgwRaWBQLKGL7NHZ7af+6uDzZYZEE6bIW2dVY/
	 +7jeLWfhB3qax+I8EXIKgO5MIuKkZOU5Paf0iM3yBTM7smXr8nIWn4LVphsh1tLzh+
	 hkp8fG1+nzz64TI6XAX277P1DAJ23Wy6Ul7EFiZIjIHLU8+eIjxgWW//qPsU4lamvf
	 Tg53Vr3srX2vg==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id DAF223850D7
	for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2024 09:58:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T9JbT2O2";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7951f67e88bso16041185a.3
        for <usrp-users@lists.ettus.com>; Tue, 04 Jun 2024 06:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717509522; x=1718114322; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MmLszh+bIyYN7TkrNY/kncvcA31lK2TxuPoPlIgmGFk=;
        b=T9JbT2O2FY6kG+C50QM9p8FvXzpyEygOmPZXv9I2GFXsEVuMFl9XS+oUkfLAZ49Igg
         b+Qvytop5mid612Q7czM69MiSQuX+slfZaE9bhRw/d/1cgfOgpafO6N81OkqGFIvNduy
         7Z90lv3iLY/KY+KftGpHicpIo3Z5aRQmJUBNnyj8gb1j/AM4goW3UYLT+40EmZtcbePD
         xm3sA3TPo1rYn0kP4DZpUpblOWbwQiOR+xYiIjBdTG62n7TP2WllsENP2Fwp1GKQJMIs
         8LQhHhXo2klRe5whRCR7bTWdAibEGoU5kBwvlM/ZiB91ge4NM/V+rYz26PcaD1qNuzWM
         zH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717509522; x=1718114322;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MmLszh+bIyYN7TkrNY/kncvcA31lK2TxuPoPlIgmGFk=;
        b=IF4ywdvL7UoIxtRiIWO4Luyls8dooT5o+3ZMgUWT0STEuSztKw/XNK7wxR1qjC3F+d
         4ZgEhVgfrSBc+VYw+mv/z/mpd1QCsmzlkXFT9o8foG+5Li8InFgd5QWKbrPpCPBrVwk8
         1XCaurWPpBlLDV9BibHTe2QWXErGDo9mlgcWUvrdtwGHLrcawnduOpblSyNrW6vGiGPw
         +0Gf9WGLxk/jsL9/r00VOcPrv5cXDMtSO590Z2f5iN7u5MTll0hsh5SMKd2PccIKOVqI
         ddfCF5QBHSxd86PWMukKN1LbB+hnJuYiZwWTOVfkPVaDEbq0d8F2pcKUHBVriqW1CyST
         BQ1g==
X-Gm-Message-State: AOJu0YzmI6dB+ZNz62mNSQ4Zl4/AKQoebNZnZl2GolyKLbSfF+ZZQO6W
	lYWjxSR3bvneGY+It+etBGj/OZ5gZYNF8uri1IZ0EZK6X4whaUgkdYdPWg==
X-Google-Smtp-Source: AGHT+IEcUI50/mQK9hWNun3q0qGQdzvO9qjk81nTLB/pZjFLxwMdkjb789Ti66gNUwZWli4ileB/eg==
X-Received: by 2002:a05:620a:1903:b0:790:9be7:6ce0 with SMTP id af79cd13be357-794f5c6486emr1418315685a.16.1717509521628;
        Tue, 04 Jun 2024 06:58:41 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-794f30602f5sm363936085a.77.2024.06.04.06.58.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 06:58:41 -0700 (PDT)
Message-ID: <7464804b-a2da-453a-9a0b-9ce91d0c294b@gmail.com>
Date: Tue, 4 Jun 2024 09:58:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.PROD.OUTLOOK.COM>
Message-ID-Hash: ZC7MYQZDWR6V3FIVK45D6RGVR7Q5F2SY
X-Message-ID-Hash: ZC7MYQZDWR6V3FIVK45D6RGVR7Q5F2SY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: usrp x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZC7MYQZDWR6V3FIVK45D6RGVR7Q5F2SY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2130623225929623348=="

This is a multi-part message in MIME format.
--===============2130623225929623348==
Content-Type: multipart/alternative;
 boundary="------------0SEHccnS44ZRuOrzyQKgprf5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0SEHccnS44ZRuOrzyQKgprf5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/06/2024 09:23, Moussa GUEMDANI wrote:
> Hello,
>
> I would like to know if I can use the usrp x310 as an O-RU, connected=20
> to a CU/DU via openfronthaul=C2=A0interface, (split 7.2x)
>
> Best regards
> Moussa
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
There is this:

https://openairinterface.org/wp-content/uploads/2023/11/Neel-Pandeya-NI.p=
df

I'll ask Neel if there's an implementation for X310.


--------------0SEHccnS44ZRuOrzyQKgprf5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/06/2024 09:23, Moussa GUEMDANI
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);">
        Hello,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);">
        I would like to know if I can use the usrp x310 as an O-RU,
        connected to a CU/DU via openfronthaul=C2=A0interface, (split 7.2=
x)</div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);">
        Best regards</div>
      <div class=3D"elementToProof"
style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt; co=
lor: rgb(0, 0, 0);">
        Moussa</div>
      <br>
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
    There is this:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://openairinterface.org/w=
p-content/uploads/2023/11/Neel-Pandeya-NI.pdf">https://openairinterface.o=
rg/wp-content/uploads/2023/11/Neel-Pandeya-NI.pdf</a><br>
    <br>
    I'll ask Neel if there's an implementation for X310.<br>
    <br>
    <br>
  </body>
</html>

--------------0SEHccnS44ZRuOrzyQKgprf5--

--===============2130623225929623348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2130623225929623348==--
