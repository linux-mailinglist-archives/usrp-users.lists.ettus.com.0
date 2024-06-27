Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB34B91B26C
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 01:00:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B10E385894
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 19:00:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719529242; bh=8koC3oxtzRHtHB2VR3erwOR6M2R8yyuVRAd7o2NQgnQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oJ/KgirF1LBzdq3rnvw5UtNZnKTGwcncSPThtN6mdpDfYPbUQi5p/2ipdXZsan1rw
	 uJlSXlJ2ZuDcG1ug80N9Zp+/oMoAkSkOwO5VVwE4Sxy556aN463JRZU5zdrLORyN3k
	 2JC5FJLmrGMtRBmjtOmcB7BL+YpnvhqRVC2Uf1K3MTnJXZDpiMPj/tXfJesAUtnKMg
	 ev9D9coAtEa4FToEkho5TSAMSk2+ruOVPNUkvE9Zmvp2UNgHZ3868gr6REdRrPqIeK
	 P4btrYsD9b+RbAanhIE+z6heJwKVdhd/5DW9XBpCIsGgfz3txx5us9CiLvWRibFdze
	 3rlQPRFtkXIrg==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 85AEA385834
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 18:59:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Yfqk/qhZ";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-79c11e92afaso189100785a.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 15:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719529193; x=1720133993; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B6lHn9uqcGlEIEKDcEJrb/k20eQMh14vIK2PNjA5S7g=;
        b=Yfqk/qhZzhL/XCQ2BpugGJBDGqQ/8LYhxdsjFfTD7swHQu1BRGknECZHRUnkZShI17
         cmok5UT6sZpdOYJyTVmbMNq6Zxh8k1QGEUln/BmEx9koGqGhU8wnBbJPCsHqQXuEdhkV
         RwHPyGVgL/VB23mxgITPtAXrHVAxSq7BU2P+nN8o0Mynir5uoefma2ySHQFGWrJhLpKj
         JqiXNEe7wjnQrWismDwABEu0e5sWbG7kVuYIXmTPRvRg+4WeOq+7fTUgqjvQ1onI79YW
         qvt77EC7x7TqnTV57YdpVO/AYFADigJmpCuxVUm/hdlfTsfGqT2comSlAbE5fD3as9sr
         rPgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719529193; x=1720133993;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B6lHn9uqcGlEIEKDcEJrb/k20eQMh14vIK2PNjA5S7g=;
        b=mGJwAe13kWojwqE6w9kpaQePixbwcskFwRHPIg96cXBo8BhvVZaVT2JyqF091X+ej+
         r90K/7f3jJ1U3fgVifAIpkgpVmSHgN8AwLv+OQhIKxS/p/iNrukgInhU7bju4DqRhkyT
         PR0+Arv9GLS1QAYci+c6RYJxYYIGPGAV1E6+YBOfYJIVd4X2pN3GpFGbAAcl+ZCDEpWY
         SdGjJ6TcGHYqPxwExLHnWUMEucQYWwxGkTc50pGSpXv8Wp0/UEe6WfolaEHHUdi+z3Gz
         h8A1WhEHpZWmivgeFdZCaoPgrwOt+l18SBFUwW0YC+HRrwZ04PR+GuJNe5b9stKExYWp
         dyNQ==
X-Gm-Message-State: AOJu0YzX134FBQqNwZ0OFZgxelhxRveEqChm+qhzSQ6N9VfDIhEv22A9
	jYWXs0W/UqPEL8kFny8wAj0hC9rhtzBK9m9nKDpRaO+BFYLQ+0g2wFodDg==
X-Google-Smtp-Source: AGHT+IF5Leca0QXq0q6PVnet4qraq4lN3CYF9kE5tJ01Xt7l5d52f04a8oJt+WTjts4ZjlMQ8B3hmQ==
X-Received: by 2002:a05:620a:5806:b0:79d:69c7:5924 with SMTP id af79cd13be357-79d69c75c6dmr59882285a.13.1719529193311;
        Thu, 27 Jun 2024 15:59:53 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-79d693075e0sm21458885a.109.2024.06.27.15.59.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 15:59:52 -0700 (PDT)
Message-ID: <6343a6b9-71d1-4f2f-b9cd-7832a9c99ae5@gmail.com>
Date: Thu, 27 Jun 2024 18:59:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y@lists.ettus.com>
Message-ID-Hash: 5HXJY5LGQHEZQJ4OCTJF4RA2NAE2P54E
X-Message-ID-Hash: 5HXJY5LGQHEZQJ4OCTJF4RA2NAE2P54E
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5HXJY5LGQHEZQJ4OCTJF4RA2NAE2P54E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4014441709962586352=="

This is a multi-part message in MIME format.
--===============4014441709962586352==
Content-Type: multipart/alternative;
 boundary="------------cUbATsvW9RLa8IbL8cEXlKwS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cUbATsvW9RLa8IbL8cEXlKwS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/06/2024 18:11, cjohnson@serranosystems.com wrote:
>
> Hi, Did you give the modified host/examples/tx_timed_samples.cpp I=20
> provided above a try? This maybe the best first path to go down, to=20
> make sure it is not a UHD thing. You can just replace the current=20
> tx_timed_samples.cpp with this one (2 threads ago), then make in (for=20
> example) =E2=80=9C~/uhd-4.4.0.0/host/build=E2=80=9D. Output is in=20
> =E2=80=9C~/uhd-4.4.0.0/host/build/examples=E2=80=9D as tx_timed_samples=
.
>
> This is an actual server (64 core) running ubuntu 22.04
>
> |~$ lsb_release -a No LSB modules are available. Distributor ID:=20
> Ubuntu Description: Ubuntu 22.04.4 LTS Release: 22.04 Codename: jammy |
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Unfortunately, the X310 I currently have access to has no TX-capable=20
boards configured, so I can't test your code.


--------------cUbATsvW9RLa8IbL8cEXlKwS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/06/2024 18:11,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:aAafc2i5mSIdCU50LFOtqyd7MjJQC5VlekNM21h6Y@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi, Did you give the modified
        host/examples/tx_timed_samples.cpp I provided above a try? This
        maybe the best first path to go down, to make sure it is not a
        UHD thing. You can just replace the current tx_timed_samples.cpp
        with this one (2 threads ago), then make in (for example)
        =E2=80=9C~/uhd-4.4.0.0/host/build=E2=80=9D. Output is in
        =E2=80=9C~/uhd-4.4.0.0/host/build/examples=E2=80=9D as tx_timed_s=
amples. </p>
      <p>This is an actual server (64 core) running ubuntu 22.04</p>
      <pre><code>~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.4 LTS
Release:        22.04
Codename:       jammy


</code></pre>
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
    Unfortunately, the X310 I currently have access to has no TX-capable
    boards configured, so I can't test your code.<br>
    <br>
    <br>
  </body>
</html>

--------------cUbATsvW9RLa8IbL8cEXlKwS--

--===============4014441709962586352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4014441709962586352==--
