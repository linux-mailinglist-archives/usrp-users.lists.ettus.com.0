Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6021C9D9AEB
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 16:58:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DED1385A44
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 10:58:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732636733; bh=254WpRPxguUSVdimEXS9t74jq7kZYapTyuicRfy1m/0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r08rPQUDniEFUbQSwgc53rqXBMPQlXRjMJ/rqmjUeSDZ9L7HaS/xDhlg1uiNeVAn4
	 w1AC0U6E8RhJUXHTRCGpMsSDJ14fUNPhdeDbQc5PWp5VUSHldZVkPBpjz1BLz4NB6F
	 66vEnLBw3NsRf4ga4e7CQwha/khTrV7Wm+dKvW2bxnZ0ANnEPaVTSCMYlr5DjfXj/c
	 zLmIMQeYA38LjcvsZJuW0oBI73cKXkuJRxklov0C7aEqbMXl0PHsWSo+JqXdWWHJvS
	 0s1JZ3HbJeotZ1l16aGYrsJUlNYeXxUB/LoCSaTsaCWHag4NC1LcZW16sEYHrDUnjp
	 rvODj/Xfe/Rfw==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id EA1CE385A40
	for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 10:58:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VyyglAR3";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4669eecd88dso12591041cf.0
        for <usrp-users@lists.ettus.com>; Tue, 26 Nov 2024 07:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732636711; x=1733241511; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5iPpcRw+165lbQ7WoQBjPgd60XKVjWTOAvMhVFUrJnU=;
        b=VyyglAR3o7y2Ui54gG+xFcXrlmmz1u9WKn+ihVhvCSF7Ml1Y4bT/AGHz32mtvizTWV
         CZMqEVUS+JsvdTq3hBjn/tistHzWSD+tUriy0BcWmF9gk486itfJv7/B2t458pM86fqj
         MMYEo/zRZVVdA6zjyq0/bQBr1XJcxv6a+Zb7NlvhlQwDOK7MwyWAYCcuROiE9MsIe0oS
         9eAxdJS4wmxKzgI0fHeeGTkg6B1ec7TYhVUR2kNCoNHvc6dQqIz16kSs4mYkOxLfOB7q
         bBLMjZTP93ziCxOUThtYWNzHeXy/gIKgag+BDd69/lmGAkpV8B/BZu3c2Fy4POYB7DvJ
         zm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732636711; x=1733241511;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5iPpcRw+165lbQ7WoQBjPgd60XKVjWTOAvMhVFUrJnU=;
        b=hyBko5yVlNJ+H38lFbBmtXZg5pY0sjiV/4hCe4slixaofXnTXf219LUJVtfG6gDqHj
         0cntZZjMU7U0JRy7VrWrMmkwv6RNHSTj+zaUvJBAfRvVHqhG13kH+R9nrKAGihQdyIwg
         7LzaTdoIDUFh0Ff4onmmp/07GWxHM0ArRXsKDW/MHVKAhWuY4/XNIX0wrq2ywkhUKuAe
         DejXVrciD+rc+Fg89vAhxMraVqcOJrRvwi0NqRvnJv+6bhiIvh27q+FcPJzgLUnudBOx
         ciqj8ctOZVwpc+ZA3qqYyrWwmSqGlL9Qn7tmo6hDQWir1NrSdkaESLUbiLOf65Iu6x6V
         adBA==
X-Gm-Message-State: AOJu0Yxh2b2qNpQUTQyJPfOxucqu2G6y9CNKlP4tGIUJxKDVJHU5qRZK
	OKfSgEdzYFHjPX5tHobGnkqL6fWEs/Q2pYmhg/RBUlmkMG+wBbZDzcYvRw==
X-Gm-Gg: ASbGncu997nh2pylrxI0h4wfMuCBw+8V7KXYaJrUtOO7oCT7TnOEF43J13dCBuRq+MK
	kQoU1+unI3QjzQ2q0Er/3Ft9I4xKklOKoFI+rqkQseG4SlnWxX9sHNX6RUkfy5NZiKHh9TmWRJZ
	7fGYQoPFBurBL3DjLMXGuoeX9wJ2eaujJ4prfH7wFZ2wprTxuWrp3De91H6hx3apn//Q3ZTYWi2
	k76/XGzI0bykdo9R46NDNXlyhx71aYprZPa/CEJaHDC2eb9Bkz8sUwX8F9U
X-Google-Smtp-Source: AGHT+IETwoPYlqYo+/YwOtZ/Y0N9z3hhs6c0B1xProvAa8W01OLn9JuldzwsCGvdRriqvrFglUtjKA==
X-Received: by 2002:ac8:5a13:0:b0:466:adbc:f1e2 with SMTP id d75a77b69052e-466adbcf4d6mr23291311cf.18.1732636710989;
        Tue, 26 Nov 2024 07:58:30 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-466a47fa3f8sm12332871cf.69.2024.11.26.07.58.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2024 07:58:28 -0800 (PST)
Message-ID: <35f6b1f4-8291-47ca-852f-b47e58aabf77@gmail.com>
Date: Tue, 26 Nov 2024 10:58:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAO=xj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=Q@mail.gmail.com>
Message-ID-Hash: IBVFD2ZBGSLKEP7O357JPJ7QUKG35HR5
X-Message-ID-Hash: IBVFD2ZBGSLKEP7O357JPJ7QUKG35HR5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: n310 | Error: failed receiving packet. RfnocError
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IBVFD2ZBGSLKEP7O357JPJ7QUKG35HR5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6656782128452404555=="

This is a multi-part message in MIME format.
--===============6656782128452404555==
Content-Type: multipart/alternative;
 boundary="------------WJoMFk2uF31Dc9vKAmUIjuBA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WJoMFk2uF31Dc9vKAmUIjuBA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/11/2024 10:18, Houshang wrote:
> Hello
>
> I have following UHD version on my server:
>
> /ad@bm-super11-intel:~/houshang$ uhd_config_info --version
> UHD 4.7.0.0-0ubuntu1~jammy1
> ad@bm-super11-intel:~/houshang$ ssh root@10.10.0.100/
>
> And the following UHD version on my n310:
>
> /root@ni-n3xx-32000F1:~# uhd_config_info --version
> UHD 4.7.0.0-0-ga5ed1872
> root@ni-n3xx-32000F1:~# /
>
> They are the same and my n310 is updated with the following file:
>
> /ad@bm-super11-intel:~/houshang$ md5sum=20
> /usr/share/uhd/images/usrp_n310_fpga_HG.bit
> 532b338d6861268c05a4fd9837ca80e5=20
> =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit
> ad@bm-super11-intel:~/houshang$ /
>
> I am running srsRAN gNB on my server (/Commit 9d5dd742a/). A version=20
> of srs of srsRAN that is compiled with /UHD 4.7.0.0./
>
>
> Here are the error messages I get:
>
> /=3D=3D=3D=3D gNB started =3D=3D=3D
> Type <h> to view help
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Late: 2805; Underflow: 2238; Overflow: 0;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Late: 0; Underflow: 5; Overflow: 0;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Late: 0; Underflow: 4; Overflow: 0;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Late: 0; Underflow: 4; Overflow: 0;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK.
> Late: 0; Underflow: 4; Overflow: 0;
> Error: failed receiving packet. RfnocError: OpTimeout: Control=20
> operation timed out waiting for ACK./
>
>
> And obviously it is not working with this amount of errors.
>
> Can anyone help me with this please? Is it a bug in the UHD version?=20
> Or is there something I am missing here?
>
> Thanks
> Houshang
>
Try "the basics" first.

What does:

uhd_usrp_probe --args "type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2"


Produce (you might have to change the addr to whatever the address is of=20
your N310).


--------------WJoMFk2uF31Dc9vKAmUIjuBA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/11/2024 10:18, Houshang wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAO=3Dxj9WM9jE2+niznSkpqcrqL5hmyYiStSM2DAaOZzL1LAJm=3DQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello</div>
        <div><br>
        </div>
        <div>I have following UHD version on my server:</div>
        <br>
        <i><span style=3D"background-color:rgb(238,238,238)">ad@bm-super1=
1-intel:~/houshang$
            uhd_config_info --version<br>
            UHD 4.7.0.0-0ubuntu1~jammy1<br>
            ad@bm-super11-intel:~/houshang$ ssh <a
              href=3D"mailto:root@10.10.0.100" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">root@10.10.0.100</a></span>=
</i><br>
        <br>
        And the following UHD version on my n310:<br>
        <br>
        <i><span style=3D"background-color:rgb(238,238,238)">root@ni-n3xx=
-32000F1:~#
            uhd_config_info --version<br>
            UHD 4.7.0.0-0-ga5ed1872<br>
            root@ni-n3xx-32000F1:~# </span></i><br>
        <br>
        <div>They are the same and my n310 is updated with the following
          file:</div>
        <div><br>
        </div>
        <i><span style=3D"background-color:rgb(238,238,238)">ad@bm-super1=
1-intel:~/houshang$
            md5sum /usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
            532b338d6861268c05a4fd9837ca80e5
            =C2=A0/usr/share/uhd/images/usrp_n310_fpga_HG.bit<br>
            ad@bm-super11-intel:~/houshang$ </span></i><br>
        <br>
        I am running srsRAN gNB on my server (<i><span
            style=3D"background-color:rgb(238,238,238)">Commit 9d5dd742a<=
/span></i>).
        A version of srs of srsRAN that is compiled with <i><span
            style=3D"background-color:rgb(238,238,238)">UHD 4.7.0.0.</spa=
n></i><br>
        <br>
        <br>
        Here are the error messages I get:<br>
        <br>
        <i><span style=3D"background-color:rgb(238,238,238)">=3D=3D=3D=3D=
 gNB
            started =3D=3D=3D<br>
            Type &lt;h&gt; to view help<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 2805; Underflow: 2238; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 5; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 4; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 4; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.<br>
            Late: 0; Underflow: 4; Overflow: 0;<br>
            Error: failed receiving packet. RfnocError: OpTimeout:
            Control operation timed out waiting for ACK.</span></i><br>
        <br>
        <br>
        And obviously it is not working with this amount of errors.<br>
        <br>
        Can anyone help me with this please? Is it a bug in the UHD
        version? Or is there something I am missing here?<br>
        <br>
        Thanks<br>
        Houshang<br>
      </div>
      <br>
    </blockquote>
    Try "the basics" first.<br>
    <br>
    What does:<br>
    <br>
    uhd_usrp_probe --args "type=3Dn3xx,product=3Dn310,addr=3D192.168.10.2=
"<br>
    <br>
    <br>
    Produce (you might have to change the addr to whatever the address
    is of your N310).<br>
    <br>
    <br>
  </body>
</html>

--------------WJoMFk2uF31Dc9vKAmUIjuBA--

--===============6656782128452404555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6656782128452404555==--
