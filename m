Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FF3A7E5D5
	for <lists+usrp-users@lfdr.de>; Mon,  7 Apr 2025 18:14:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FEEF386140
	for <lists+usrp-users@lfdr.de>; Mon,  7 Apr 2025 12:14:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744042457; bh=zr04cvxknFi+auvIKwCz38b5Dwa0kG5biAWhOT9kZi4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=l9S98tUNp32bqpwfjaBIUNhKvTaaNaXytY+vrjuliCNhJFuLt/jfBYsLHhVmUbH0+
	 1GbyDn7ldF0vLYqnJsvEy8H0aOfUOhZq/12uXfcblVZLWpVcLZHoaCmRNba7w4XQkT
	 ILD4BDSnzpZftnqTV/6Qccx67yRyLhZC9eYdS3tOS780aQR3do6wf946vq+3f39Djx
	 7vvw9Q5c9fLiT4afqKDH6HyeWIrXYDVZb1TCplkaTyd1TxWgrxcZQF2x6T2NqZ0JzW
	 i68xLI7wbiotc3gVlMWLVrj/8Xv7+/LL2K9JeJROmYEailvs0CCbdml1OHeT+8ukYR
	 84DAtGzFFOomg==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 17ED1385BA1
	for <usrp-users@lists.ettus.com>; Mon,  7 Apr 2025 12:14:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="myC3D0ey";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c54b651310so632254185a.0
        for <usrp-users@lists.ettus.com>; Mon, 07 Apr 2025 09:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744042450; x=1744647250; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6zhGxKN3IGdXc+5wpW8TbleqsCINecsOpTQtGTnJzE=;
        b=myC3D0eySiUNYf5anlpyDBx9Up99wF4BirDI4mDjZeF06/+ZUfYON/3m0LN9mEDU6O
         odKwAVMVHg414ihtiR7/4OrMBFSnZ5FqsVdMA04Afa+BEqJh7tLiouUYyILh9/msxkfI
         H32hlcpFkcsBPSN+4n3oxObaoH5KaK91xMSCPPq52XW/jc+8RybAQGlEYtkmEV0j9r9L
         CMV8EVJS2SQpJQMI6zTSX84UTKiocIw0srjxfjrhXmM8SSTHcxjmdJ1260fpbOkdm0vF
         zcpiIPzw8l6FEBKs8J3TEYhXCxvyVdUEz7vnZZTIqNtW9CDIiY+IQmcqxel3Ej9NLVNB
         /CNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744042450; x=1744647250;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c6zhGxKN3IGdXc+5wpW8TbleqsCINecsOpTQtGTnJzE=;
        b=h536gxwJhO9knaaXLDcGXxEuMcUEakmFTzwocQNs7CKcRbLVurZ8bowfvkaGUHCZVq
         IiVs8paUxbGJZnFTrnTsElMW7uLukzp+Z1De576q4k6F2gzY5NyNwp67q4nhG7vNdEWp
         a4QsqyZFPrUN3dqBkiFfPWcI40LokraE6ZwW2c3E0fYaFc3+kJNefabZfZhyBKW0aeAl
         v0pIIpPeWJTt2VzbDOyeWbFTMQWIP68mMJZeVEYQe2q3/cKupVUOOXJJpPyS9UgYGntS
         SfTj6K2U36RMqGs89fSo2prSxcujs0Kx/1ER7Ui+13O/0GtFHYoXeEP9qOutR1EZgAYo
         HLGg==
X-Gm-Message-State: AOJu0Yym5chy8l5ASLkI/IlN2H/IXZBKybZLm9vyqPniEps0HWnzo+ai
	pngqbOtEiMR2J1LZ7YZePgpg9mR8FZvODK37llO9eII/xcyuD17bF/gIvg==
X-Gm-Gg: ASbGnct1pJoEnTqMg6Hyuqfx2fd1QSmw9HA82wiegliOW4qL/V/lTRQqzHeMXsL7kvR
	RmnxXUs+PVY1b8gPFqIBfo4scERz89ee0C7V+Wg+k2bFr9d1a5mpyG/oQ0veNWtUMaWQm5DGQl3
	hv78UV5xMJbzF2Ql22mJxsQguo1/zfagVXj4AqfFWQm42C85eqMSnhzg90oSeuIK/uyaEy8bL4G
	mW5iIjG5PTZao3CPBVGw9pSWH+Su6O4nwSvy/Mwhh5PIfdemEepn729+JOjOKizRBAqoTvscgzd
	WKbAx9dSLOrN0rlHDou7dJFZuwxhnC55CTEYlOXciarxAQQ+klr0BQ==
X-Google-Smtp-Source: AGHT+IFm8MGXE3vBPSuugjLWJRkyAYPM97RECbDf3wLtcT6G6whRYcGmFLJgt9+qhnVDR99q3IQdmA==
X-Received: by 2002:a05:620a:45a2:b0:7c5:3e22:616f with SMTP id af79cd13be357-7c774d2dd42mr1904777585a.21.1744042450018;
        Mon, 07 Apr 2025 09:14:10 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7c76ea5992csm616744785a.84.2025.04.07.09.14.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Apr 2025 09:14:09 -0700 (PDT)
Message-ID: <11d36ad2-aee7-4f2c-a1c3-b5da2f1fd370@gmail.com>
Date: Mon, 7 Apr 2025 12:13:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namprd07.prod.outlook.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namprd07.prod.outlook.com>
Message-ID-Hash: AGDN6YZFWBGRU7CEHLODGKVY4VMZZWW7
X-Message-ID-Hash: AGDN6YZFWBGRU7CEHLODGKVY4VMZZWW7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 100 Gigabit Ethernet Suggestions for USRP x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AGDN6YZFWBGRU7CEHLODGKVY4VMZZWW7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7275188385255574867=="

This is a multi-part message in MIME format.
--===============7275188385255574867==
Content-Type: multipart/alternative;
 boundary="------------p1xq4xFBwEt9e0TX2anhs2r0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------p1xq4xFBwEt9e0TX2anhs2r0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/04/2025 12:07, Jones, James (jtjones49) wrote:
> Hello, I am trying to get the full sampling rate from the USRP x410=20
> which is 400 MHz.=C2=A0 I understand that I will need a 100 gigabit=20
> ethernet connection to do this. Do you have any setup recommendations=20
> or rack mounted server recommendation that can support this bandwidth?
>
> Thanks,
> James Jones
That's a question with no hard answer.

Whenever this class of question comes up, I have to ask "what do you=20
want to DO with those samples?".=C2=A0 If you want to just
 =C2=A0 record them, then, you also have to consider the recording=20
mechanism.=C2=A0 400e6 x 4 bytes =3D=3D 1.6Gbyte/second recording
 =C2=A0 capacity.

If you want to do "computey things" at those rates, then you have to ask=20
"can those computey things be easily decomposed
 =C2=A0 such that they can be shared across multiple cores?"=C2=A0 "what =
are the=20
memory-bandwidth requirements of what I want to do?".

Basically, what I'm saying is that there is no tidy answer without=20
knowing the "shape" of what it is you want to do...


>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------p1xq4xFBwEt9e0TX2anhs2r0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/04/2025 12:07, Jones, James
      (jtjones49) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namp=
rd07.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hello, I am trying to get the full sampling rate from the USRP
        x410 which is 400 MHz.=C2=A0 I understand that I will need a 100
        gigabit ethernet connection to do this. Do you have any setup
        recommendations or rack mounted server recommendation that can
        support this bandwidth?</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        James Jones</div>
    </blockquote>
    That's a question with no hard answer.<br>
    <br>
    Whenever this class of question comes up, I have to ask "what do you
    want to DO with those samples?".=C2=A0 If you want to just<br>
    =C2=A0 record them, then, you also have to consider the recording
    mechanism.=C2=A0 400e6 x 4 bytes =3D=3D 1.6Gbyte/second recording<br>
    =C2=A0 capacity.<br>
    <br>
    If you want to do "computey things" at those rates, then you have to
    ask "can those computey things be easily decomposed<br>
    =C2=A0 such that they can be shared across multiple cores?"=C2=A0 "wh=
at are
    the memory-bandwidth requirements of what I want to do?".<br>
    <br>
    Basically, what I'm saying is that there is no tidy answer without
    knowing the "shape" of what it is you want to do...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CH2PPF2C97A4CC526CE619D2616765603E6CEAA2@CH2PPF2C97A4CC5.namp=
rd07.prod.outlook.com">
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
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
    <br>
  </body>
</html>

--------------p1xq4xFBwEt9e0TX2anhs2r0--

--===============7275188385255574867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7275188385255574867==--
