Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOulBjpbhGl92gMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 05 Feb 2026 09:56:26 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E00AF01F0
	for <lists+usrp-users@lfdr.de>; Thu, 05 Feb 2026 09:56:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33F4B385F12
	for <lists+usrp-users@lfdr.de>; Thu,  5 Feb 2026 03:56:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770281784; bh=kw1weA6cUvvBVOD5s1M3fDrbwa5uW1Vsx96pjFr5Yk0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vDhN3aSxKhv0g3whwgX6hrGDsaR6PwZHfMjynfT3uGdW7nfOoOEZov+/vhbRdxqKp
	 6jCeBlgN9qrgDeNfDtJvcG9H07HVE73J9PtgHmBYgCEUeh3HwQ8Ixs0skHQX5ijNGH
	 hWvM2xH0OKexfrhC41JWtIOwwxM9VjmHiowhs5fmvocXGHoqml0l8ZCSsLLOKGJByW
	 A0cfEMQ190d+5RI8M68PEbUlyA28CgJdALNAOn7iRXeM51wBmLWXsV25qmSGg6BePo
	 eT6B7jg0NiAiN4LUwR7SLtPAvJ0k9KknSaARvn06ZwsxTREjpr/16OIox4fXVkgrr/
	 E9YBja9UAii8Q==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F3C7385D7F
	for <usrp-users@lists.ettus.com>; Thu,  5 Feb 2026 03:55:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A3m2usw2";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59b834e3d64so836775e87.2
        for <usrp-users@lists.ettus.com>; Thu, 05 Feb 2026 00:55:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770281743; cv=none;
        d=google.com; s=arc-20240605;
        b=cfhWU7rvHhuj7tsIDaerscOSFur2L+3O+z9VwEeGHBmJARiPIzFeL4ua/M77M1BwPW
         5FZ5eFNOEd9eGU5e80mrVzSsOLfHACc5n09NnWsewrHyIldKhjRUPLPSttQ9LwXkQSWT
         1gprD3AVV/FgKCkDaomuINpbInK6LbeQ47E9ZR2hINQiMQm5xjmZTbQB1i3h041bnn2S
         x8K9BuoKthLNccutUq8SSH3AJrZZvbcuKq8xdEjDckh9zeBVw0VMXC2PEccLCEvCN7Kk
         SY4wGG2hx5KHaEsmTsqK1eq1OQcx+N4dX7YnCxsV8/q5/PTXLfLKEmYVAI736X1SIlT1
         FoRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=aYJRowO9DVMkNjmp1AvCgprBgy8ROCzdkQHLqbDb0LY=;
        fh=9CUBuACEF7a4/qEm7ltrWraAgj2qU8WjZ8LgOx5Sr9U=;
        b=H8o/Ose5UWwZbXQagLx2tEdvkEJl+J9Kmo+6SL3VUcHp30uQ3lilko2Y1VUnjYDpHV
         oSJHYk1R8OL9MISdWWaYM9NLmNEiss+b5LtfCviS8BNC+/41e4zNhVKOuysYybQTJtsR
         nY7v/5k5SnBKkG9+fuxsPpgqc7wUK5LwKj71nOJeSNsDb7St7+dLJXSfK17SZF77TNIf
         yUJmYDiAJnojHnXQlc354rGD+jcQmwywV23GApUOqA92LNd7ucsqR/tfGJ8enr42lX8a
         XhOE+z+9IEPhqamzDMnoq1ZiLUN+f5ZfWImCizC6S4hvNHdKSFiErh1PHD6VP6KCsI0V
         f7Pw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770281743; x=1770886543; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aYJRowO9DVMkNjmp1AvCgprBgy8ROCzdkQHLqbDb0LY=;
        b=A3m2usw2Ar+kmcxgw6Qreut/HDWl3ZTw4q2Qa7a+mKZmelsKjkAPhB0FsSuwakZgJ3
         Z6wocNnJ9yz02S/CZXqfH8T7kIwqUgLzovJC+usXLeDTSR/9aFGrbNCl62VMgPLJ7FYE
         cNY8kjLkW5uxxYuaK8j78xscp2SGjpzFgdB5fTQL1xY6iCgQ3URHi/1KQgEUfWjEw9UT
         lJzdCQIwEeuhe2HLPcHmBz7YBaghc7+A4rNSd4XjcWfocrOHoHxZ14BN3Kw3Kuytu7Ty
         XXoQE97su6nHKDWayrbpyrcPts7GiItZbYrLqHWbxY+ve4WZpQVAyU1l93jK0XLKVJOs
         qp8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770281743; x=1770886543;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aYJRowO9DVMkNjmp1AvCgprBgy8ROCzdkQHLqbDb0LY=;
        b=A5xkXuKMVegfLjpcFvXk7qU0yDqTt3YVAWVDoPJCy3Q/szX4Vygypw+6knKqS8UgW1
         83+2zCysudo+WHGiC+ij1Nm02E1GvK4b7BQMlibDsALgfY3HqOB6kc06cUbOa04UljKU
         F20I+eC6M8oj8bfDAnRDY4VBisT6ARX2rKB4MscLGEPCFF7ECUwlyQ8qxrK4zhDpSCWV
         W3+s33O8hS5mZGjzzrTGq9TYAs+C6fxOzB8gci+FCVkqlCmBPNDCqQueDtJjw1qZAHs+
         9twPCDMI3+Z3V1qYw3YjXMt4KVd34P2LvhXTUwTBnaa90W9IVSgoicWMxs6zR2HykX4k
         rI/A==
X-Gm-Message-State: AOJu0Ywa1g+4RQJelxSaHjvbaC8r4UzOEnnP/mk1aGcVdA+xjtQHZGLX
	jQ1AV2h6l2FKVE7O6c4wqbi+3odwL8EcDpTiKE4e6Sc6Bx4sSk8MA3ZZ0FyG6Te6U50i/pnCtz1
	78WlXANRJ2e1hBjL99/+wWW16tQWOw2poIA==
X-Gm-Gg: AZuq6aKl20O/pAN6g3sB1YXXBmKCULz3W5NyV3ESvbdHpbqq9GwFlWiA/tnL6nojXLm
	cZl2aj72G+7wU+44hlQv3xfR+cdzlqbZ4Eq89EAGTgK3nT25daXOJkP3smlo5JYCfFgadxO1rNp
	7+XaObvOJ9SsGl/oBofmBU6aMQxDuCdbzvFnQwvTXMX1EqLsHfZfA9sVs7C+zm7hYFm1d6CUyqg
	23pPowWXrMR24Axn2aBKOGMCdGll70GXLqG1cS9falJUOD/AQ9rugP4y7JbvqlXatWmz4mIqyII
	Mef3QgsHxwZucJ4LS6ObXU7C2rO6vWq2og5WUaBHNZ2BUP2pgj4i/DS9CHWWYl9XpWuX
X-Received: by 2002:a05:6512:3b27:b0:59c:c05f:be with SMTP id
 2adb3069b0e04-59e38c0235bmr1962649e87.1.1770281742472; Thu, 05 Feb 2026
 00:55:42 -0800 (PST)
MIME-Version: 1.0
References: <CAE_Rk56j50WBbXViEyE7A2DDny17g0XkFfp+=M=bbYWh5ywU+g@mail.gmail.com>
In-Reply-To: <CAE_Rk56j50WBbXViEyE7A2DDny17g0XkFfp+=M=bbYWh5ywU+g@mail.gmail.com>
From: Daniel Ozer <danielozer22@gmail.com>
Date: Thu, 5 Feb 2026 10:55:31 +0200
X-Gm-Features: AZwV_Qj5agaJvOgdo1skQXDEBOD5oVcQAvOpNRSiYvfs_QAwjcNDABzzdUKOTRQ
Message-ID: <CAE_Rk540uFo9aojLwrkxpLzowHGr_YUY3UyzxH1aTMaSezCsFA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 6P4EH2TD37RNUKLC2VQ3IBLUTK6ETX3M
X-Message-ID-Hash: 6P4EH2TD37RNUKLC2VQ3IBLUTK6ETX3M
X-MailFrom: danielozer22@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: error when loading a bitfile with more than 8 eps
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6P4EH2TD37RNUKLC2VQ3IBLUTK6ETX3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0217806383059575137=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[danielozer22@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 3E00AF01F0
X-Rspamd-Action: no action

--===============0217806383059575137==
Content-Type: multipart/alternative; boundary="00000000000069968f064a0fd60c"

--00000000000069968f064a0fd60c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

it seems that the problem is when I use more than 8 eps.
but i don't find any limitation on this.

=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=
=B3, 28 =D7=91=D7=99=D7=A0=D7=95=D7=B3 2026 =D7=91-10:34 =D7=9E=D7=90=D7=AA=
 =E2=80=AADaniel Ozer=E2=80=AC=E2=80=8F <=E2=80=AA
danielozer22@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC

> Hello everyone,
> I need to create a bitfile for the X440 usrp (based on the X4_200 variant=
,
> with uhd 4.9.0.0) which takes each rx port split it 2^n ports, each port =
go
> to a ddc then to the eps.
> While i managed to accomplish it when the number of the eps is equal/lowe=
r
> than 8, each time when there is more than 8 eps i successfully passed the
> creation of the bitfile but when trying to load (using the
> uhd_image_loader) it on the usrp i get the following error at the end:
>
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> RfnocError: Specified destination address is unreachable: 1:0
> Error: RuntimeError: Failure to create rfnoc_graph
>
> I tried many variation (see the attached yml) -which include adding to al=
l
> eps True on the CTRL option, i tried to use only 2 eps with 8 in_ports an=
d
> more.
>
> What may cause the problem?
> it seems in the documation there is no limit for the number of the eps (o=
r
> ddc,splitter) as long as I managed to implement it successfully on the fp=
ga.
>
> thank you all in advance.
>

--00000000000069968f064a0fd60c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">it seems that the problem is when I use m=
ore than 8 eps.</div><div dir=3D"ltr">but i don&#39;t=C2=A0find any limitat=
ion=C2=A0on this.</div></div><br><div class=3D"gmail_quote gmail_quote_cont=
ainer"><div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=D7=AA=D7=90=D7=
=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=93=D7=B3, 28 =D7=91=D7=99=D7=A0=D7=
=95=D7=B3 2026 =D7=91-10:34 =D7=9E=D7=90=D7=AA =E2=80=AADaniel Ozer=E2=80=
=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:danielozer22@gmail.com">danielo=
zer22@gmail.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div dir=3D"ltr">Hello=
 everyone,</div><div dir=3D"ltr">I need to create a bitfile for the X440 us=
rp (based on the X4_200 variant, with uhd 4.9.0.0) which takes each rx port=
 split it 2^n ports, each port go to a ddc then to the eps.</div><div dir=
=3D"ltr">While i managed to accomplish it when the number of the eps is equ=
al/lower than 8, each time when there is more than 8 eps i successfully pas=
sed the creation of the bitfile but when trying to load (using the uhd_imag=
e_loader) it on the usrp i get the following error at the end:<br><br></div=
><div dir=3D"ltr">[ERROR] [RFNOC::GRAPH] Caught exception while initializin=
g graph: RfnocError: Specified destination address is unreachable: 1:0<br>E=
rror: RuntimeError: Failure to create rfnoc_graph<br>=C2=A0</div><div dir=
=3D"ltr">I tried many variation (see the attached yml) -which include addin=
g to all eps True on the CTRL option, i tried to use only=C2=A02 eps with 8=
 in_ports and more.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">What=
=C2=A0may cause the problem?<br>it seems in the=C2=A0documation there is no=
 limit for the number of the eps (or ddc,splitter) as long as I managed to =
implement=C2=A0it successfully on the fpga.</div><div dir=3D"ltr"><br></div=
><div dir=3D"ltr">thank you all in=C2=A0advance.</div></div>
</blockquote></div>

--00000000000069968f064a0fd60c--

--===============0217806383059575137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0217806383059575137==--
