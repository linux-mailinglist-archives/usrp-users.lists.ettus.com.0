Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0B1855893
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 02:07:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9681A384A1D
	for <lists+usrp-users@lfdr.de>; Wed, 14 Feb 2024 20:07:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707959228; bh=g90kttEucKedPtQRRXW54QqyF2FtwX1TfPeMiJR5RYM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BrmXdyTP2DoCOs9JeD+8MR27hVFB2BN9AaYN9aktQ4xkyedMZ1pZBDZQv4EU3Sesf
	 S9y6idnECYgqscQLp0jqs73Z+nOo/ZXdlK7EH0EwUxcn8K2FXQXM+fkAkREwN3URaL
	 njxFw7IVrTSR+nqccvGy9eCB8shbDkRdPGDaiDoNIHOJNVAasbZbi3UG/OxTuDkbI5
	 W/wMPzQqvy7TzKYWAKIvYbl0ojF4fz8g/r/W5hHFa8Gsx2DKB5wthdrFURmL3DnD4p
	 42+70ogKUWKsBgn27YCbwlTyORKSBQZe8M6ncv2eqGg7CX5Fp9N6rTdNMM9Jw9j2wB
	 noDFc18udTtYA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id B2A36384A0F
	for <usrp-users@lists.ettus.com>; Wed, 14 Feb 2024 20:06:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OSKi5Evl";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-68ca3ab3358so1849996d6.2
        for <usrp-users@lists.ettus.com>; Wed, 14 Feb 2024 17:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707959212; x=1708564012; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2yYjNXL+7Io4S/oKT8dJ0ufH1in0qYiSyGnB7dn1QCo=;
        b=OSKi5Evl8cm9SHGAn0UmaJbQXS3c1zPUW72tggvQ2SjkiHxLdCq9+Hw65xTu0eFfha
         EVWItIZCD7BVD5wg5voC5CP/QXid1bBL2qdmJYfH8rtXm5Zua4efs3+s49ItA7XRWS43
         E0gcy00rAy89mSCf+eiNgxygaGrcFFJAOXsTdbtV/Lh8adbzDRkfgR0b9BmJhPMpxP+a
         ZWhDpaQHlsB6HD22pNf33mY02UigsFjK0LGOgwMfSfAd/7UuIM1Y88i4tAzl2SEn3/Zh
         X6bS2WPRQskITbyNuWWJ3FELauGg9gm728f9pmOuR0YwLI5OBe5+noJTTOiqUI+tieDA
         ll5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707959212; x=1708564012;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2yYjNXL+7Io4S/oKT8dJ0ufH1in0qYiSyGnB7dn1QCo=;
        b=O+tps7tmImskfDffx7ZZ8Vmp5IjP8zHUAIgbPdgKp78j/tYzl3TU4s5FvveKVwhZSn
         WRf9kmzu7/UnRsLFUXZm9KNlEnpOGQWJG9GAd+BYPKdaXnb5AJMzbhrRy3uVbuaivLUj
         g8MFgGzhmYVW3tZBxJDFx8nwAGNwseX64NAsftPJiqplfA21613Zo86dgWBffZ6Hw0vt
         fvXYloCgNlPU8u+YdXaBRjjzq4OVoVa8xuIctuItRZNx+2vYPlJisPCZEiWRB3Dh4K1n
         v/XvGjKBmBG3DJn5Wir52i1tNL4LjllSPmxquzC79W/7b2zwTz98Q8qM9jaY7edVcFYO
         mepw==
X-Gm-Message-State: AOJu0Ywj5o38LnBpT0SpO3P9jReCbiByNYhCgLlLLjSpZn9hd2vshAaC
	FxwPabv8aXYjqITqdMo+z3QCTfYMxYA6sFpnR3jE0nYrDlJskxqczongaAdn
X-Google-Smtp-Source: AGHT+IGZKTMBBu8E+Oe7IJmrWrnBOVlgb9JgiO7NiwOetskbOt9CcZySj/p++LEZYhLcagIC29fvog==
X-Received: by 2002:a0c:db84:0:b0:68c:8ebd:8fa1 with SMTP id m4-20020a0cdb84000000b0068c8ebd8fa1mr353767qvk.4.1707959212019;
        Wed, 14 Feb 2024 17:06:52 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id nh1-20020a056214390100b0068ef238441bsm137293qvb.39.2024.02.14.17.06.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 17:06:51 -0800 (PST)
Message-ID: <eb1ba171-c78a-4564-af54-5b0b90148b69@gmail.com>
Date: Wed, 14 Feb 2024 20:06:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOYGa71Nf-o-kKYZBq-Oap0PAfjGR=rjOy6Fsjbp0O3SyYFnmQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa71Nf-o-kKYZBq-Oap0PAfjGR=rjOy6Fsjbp0O3SyYFnmQ@mail.gmail.com>
Message-ID-Hash: EEZ7FFYIQGRXCKOU2OIM3UGIJGTLT6LA
X-Message-ID-Hash: EEZ7FFYIQGRXCKOU2OIM3UGIJGTLT6LA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GNURadio MPM major compat number mismatch after update to UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEZ7FFYIQGRXCKOU2OIM3UGIJGTLT6LA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6615499431559755766=="

This is a multi-part message in MIME format.
--===============6615499431559755766==
Content-Type: multipart/alternative;
 boundary="------------YT30nuUzCt80PepkW6Q1C0Vn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------YT30nuUzCt80PepkW6Q1C0Vn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/02/2024 04:03, Steve Hamn wrote:
> Hello,
>
> I updated my N320 to UHD 4.6, however now I am getting an error in 
> GNURadio:
>
> "/RuntimeError: RuntimeError: MPM major compat number mismatch. 
> Expected: 4.2 Actual: 5.3. Please update the version of MPM on your 
> USRP device./"
>
> Any suggestions on how to fix?
>
> Thanks,
>
> Steve
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Your Gnu Radio install probably is linked against an older version of 
UHD, hence the mis-match.


--------------YT30nuUzCt80PepkW6Q1C0Vn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/02/2024 04:03, Steve Hamn wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa71Nf-o-kKYZBq-Oap0PAfjGR=3DrjOy6Fsjbp0O3SyYFnmQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello,=C2=A0
        <div><br>
        </div>
        <div>I updated my N320 to UHD 4.6, however now I am getting an
          error in GNURadio:</div>
        <div><br>
        </div>
        <div>"<i>RuntimeError: RuntimeError: MPM major compat number
            mismatch. Expected: 4.2 Actual: 5.3. Please update the
            version of MPM on your USRP device.</i>"</div>
        <div><br>
        </div>
        <div>Any suggestions on how to fix?=C2=A0</div>
        <div><br>
        </div>
        <div>Thanks,=C2=A0</div>
        <div><br>
        </div>
        <div>Steve</div>
      </div>
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
    Your Gnu Radio install probably is linked against an older version
    of UHD, hence the mis-match.<br>
    <br>
    <br>
  </body>
</html>

--------------YT30nuUzCt80PepkW6Q1C0Vn--

--===============6615499431559755766==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6615499431559755766==--
