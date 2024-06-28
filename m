Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A328891BFAE
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 15:38:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 370A63858D6
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 09:38:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719581906; bh=RyAaEuDwQH1j88CErQXrkoPJTogZ5HNXlKKu9laBwm0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eG263H8WNLVmAiFZ9ZOcZfM1797D9c7pKcckH7oO6XVNexLxb1i7oyfShMuhNaldS
	 oGoLvxkWy62c6tUYgZgWZrKehLYqn0Qa8LtlYlLJatg38osgfo3Uf64AJ9c6CUKfve
	 odWmmJnwkdoYbyP6OJKHZLJbV7jJN9Rd9HwCMiIXmX2LTSB/zgUpYCl5Ih5rNFzyLE
	 lF9rxduyTKmJ+0K2e3cg6ZmtsJaf0f4Jd87tjrZUpYpfw/lM4rAnyIQq3L5DVNAo+E
	 FvXTYK10FwYVwXErwWiKY+KU6bFq7oJacmU6TgQWSYDLsQZeMofghJqI+bCyLjXhXp
	 WU4xD0XoVEYqg==
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 04A253855FB
	for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 09:37:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eZlj1lNG";
	dkim-atps=neutral
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-79c0c19ff02so58730085a.1
        for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 06:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719581864; x=1720186664; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mgCKEsoSuoYxaS4sGPCqdMZHg3yJz5kfoVbepiH7F4=;
        b=eZlj1lNGbjgHjgpGMbjfH8V+2Joi7NFzazsSxbCSC0nJ3PWDTR8fqhDNoYLWKRHeeJ
         RmwbFwEffxqJOIuXNZ2eReDOcF92+JdZTx0uZBgydYex7CNi8NnXwzK3Siw2aFJncly8
         glt7rIckaFFLsYiqv4jNOAbQFyHkaYkD3pAr5wAWhqnuihroV7m4wQo6NuCsBWQbzchF
         m3ns1+hTqdb216F/0zjo15S0dvZWc2VkkNY5EQoVvziC7FvNTlp3ZNttJ7hBG8T2E7gs
         CULA0aKcueWcG0LrEjRaoR+LfFwvzTlsuQ3HTYX2EvwSKDHhY4JzUJSBCodDcKv3Ilkz
         VViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719581864; x=1720186664;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2mgCKEsoSuoYxaS4sGPCqdMZHg3yJz5kfoVbepiH7F4=;
        b=BwcbAtB/vGzf2K27N/KUPNcWComUx1qP3CworYNPx3Soj2lYpCEpQHjUpX3Tf/ReWM
         Fva2rkD8av35foDT3CKbeOiQuLD6RGVcebXdz9VjVjMXpOFQy+/Av3fggGy19crrU+BR
         UaB3az1BxkMTzjmB3XRzXymmnqsUx+OGvVoug+7Z7HUwXJbhJCuf6M/vV5t4m2m2c5/l
         m3ftb93TxTj+CuBlOIDSENbHholSDs303JD1wKqJZNVdwmsYwJg485wkcCVl5d/iQrLC
         gB+CqZMwpGW6qIdBuR8z9pi2S4wLrlAAowxqd1rKYh36OB7uMHLWCawTlNBrETdhCvv2
         6mow==
X-Gm-Message-State: AOJu0YyzH7N1tw4lUX4bag34peqY3y43341C2PzRRrRwU5T9ctufA5Sh
	hqmFZfEvjbuFx1TNtptvC75tf9alNaE0DKZU29y5RAIDockzN/C1GW9O4Q==
X-Google-Smtp-Source: AGHT+IFl+5DcWqc0Twm1Z4vO588lAmfrbY2jH2JRKCdBjcHx5ZyUGgtYeURXU2cZUvd+Dyn82StbpQ==
X-Received: by 2002:a05:620a:408e:b0:795:47d4:5f2c with SMTP id af79cd13be357-79be6f10f3emr2238593185a.49.1719581863833;
        Fri, 28 Jun 2024 06:37:43 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-79d6926001dsm73822485a.4.2024.06.28.06.37.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 06:37:42 -0700 (PDT)
Message-ID: <b938ab03-a170-4391-b379-b55dcce97518@gmail.com>
Date: Fri, 28 Jun 2024 09:37:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg@lists.ettus.com>
Message-ID-Hash: MCJOZLTP4I6UQDTRPQJD6SYV3MSDRA2W
X-Message-ID-Hash: MCJOZLTP4I6UQDTRPQJD6SYV3MSDRA2W
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MCJOZLTP4I6UQDTRPQJD6SYV3MSDRA2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2245839130323696044=="

This is a multi-part message in MIME format.
--===============2245839130323696044==
Content-Type: multipart/alternative;
 boundary="------------gsN2ZItc95L3GQzjEMOYjL8T"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------gsN2ZItc95L3GQzjEMOYjL8T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/06/2024 00:44, cjohnson@serranosystems.com wrote:
>
> Here is some interesting info that I could not explain.
>
>  *
>
>     *Ran on server at 200Msps, got S=E2=80=99s with uhd thread priority=
 at 0.90*
>
>  *
>
>     *Ran on server at 100Msps, got S=E2=80=99s with uhd thread priority=
 at 0.90*
>
>  *
>
>     *Ran on server at 6.25Msps, got S=E2=80=99s with uhd thread priorit=
y at 0.90*
>
> Why would I get S=E2=80=99s at 6.25Msps boggles my mind. This is the=20
> 192.168.30.2 address.
>
On a hunch, try dropping the MTU on your host PC to 8000, and retrying.=C2=
=A0=20
Also, try running the
 =C2=A0 "benchmark_rate" example, at various --tx_rates=C2=A0 to see wher=
e it=20
starts running into trouble.

>
> Then on the USRP PC (I think you called it a SOM), keeping mind this=20
> is a 2974, with IP 192.168.40.2 address. Remember this is an internal=20
> switch.
>
>  *
>
>     *Ran on USRP PC at 200Msps, got U=E2=80=99s with uhd thread priorit=
y at 0.90*
>
>  *
>
>     *Ran on USRP PC at 100Msps, no U=E2=80=99s after 12 min with uhd th=
read
>     priority at 0.90*
>
> Notice NO U=E2=80=99s for 100Msps.
>
> *While doing this, I noticed some odd behavior.* With Tx running on=20
> 40.2 (the USRP PC), I could not start a test on 30.2 (on the server).=C2=
=A0=20
> 30.2 would give an error
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Empty Device Address
>
> Also doing this: uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Empty Device Address
>
> They should run independently?
>
>
The radio can only support a single session at a time.=C2=A0=C2=A0 Trying=
 to run=20
two sessions from two different host computers
 =C2=A0 is absolutely not possible.


>
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------gsN2ZItc95L3GQzjEMOYjL8T
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/06/2024 00:44,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Here is some interesting info that I could not explain. </p>
      <ul>
        <li>
          <p><strong>Ran on server at 200Msps, got S=E2=80=99s with uhd t=
hread
              priority at 0.90</strong></p>
        </li>
        <li>
          <p><strong>Ran on server at 100Msps, got S=E2=80=99s with uhd t=
hread
              priority at 0.90</strong></p>
        </li>
        <li>
          <p><strong>Ran on server at 6.25Msps, got S=E2=80=99s with uhd =
thread
              priority at 0.90</strong></p>
        </li>
      </ul>
      <p>Why would I get S=E2=80=99s at 6.25Msps boggles my mind. This is=
 the
        192.168.30.2 address.</p>
    </blockquote>
    On a hunch, try dropping the MTU on your host PC to 8000, and
    retrying.=C2=A0 Also, try running the<br>
    =C2=A0 "benchmark_rate" example, at various --tx_rates=C2=A0 to see w=
here it
    starts running into trouble.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg@lists.ettus.com">
      <p><br>
      </p>
      <p>Then on the USRP PC (I think you called it a SOM), keeping mind
        this is a 2974, with IP 192.168.40.2 address. Remember this is
        an internal switch.</p>
      <ul>
        <li>
          <p><strong>Ran on USRP PC at 200Msps, got U=E2=80=99s with uhd =
thread
              priority at 0.90</strong></p>
        </li>
        <li>
          <p><strong>Ran on USRP PC at 100Msps, no U=E2=80=99s after 12 m=
in with
              uhd thread priority at 0.90</strong></p>
        </li>
      </ul>
      <p>Notice NO U=E2=80=99s for 100Msps.</p>
      <p><strong>While doing this, I noticed some odd behavior.</strong>=C2=
=A0
        With Tx running on 40.2 (the USRP PC), I could not start a test
        on 30.2 (on the server).=C2=A0 30.2 would give an error</p>
      <p>Error: LookupError: KeyError: No devices found for -----&gt;</p>
      <p>Empty Device Address</p>
      <p>Also doing this: uhd_usrp_probe</p>
      <p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
        UHD_4.4.0</p>
      <p>Error: LookupError: KeyError: No devices found for -----&gt;</p>
      <p>Empty Device Address</p>
      <p>They should run independently?</p>
      <p><br>
      </p>
    </blockquote>
    The radio can only support a single session at a time.=C2=A0=C2=A0 Tr=
ying to
    run two sessions from two different host computers<br>
    =C2=A0 is absolutely not possible.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:RmAlOPxmfbUJYH2Mizc2jE284ofJ3IvOUGkMgjpElg@lists.ettus.com">
      <p><br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
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
    <br>
  </body>
</html>

--------------gsN2ZItc95L3GQzjEMOYjL8T--

--===============2245839130323696044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2245839130323696044==--
