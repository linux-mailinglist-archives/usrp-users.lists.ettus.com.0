Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D42D36ED72
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 17:33:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E728384212
	for <lists+usrp-users@lfdr.de>; Thu, 29 Apr 2021 11:33:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pZmxBIJD";
	dkim-atps=neutral
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A7DF3840C6
	for <USRP-users@lists.ettus.com>; Thu, 29 Apr 2021 11:32:55 -0400 (EDT)
Received: by mail-qt1-f174.google.com with SMTP id j19so9107752qtx.13
        for <USRP-users@lists.ettus.com>; Thu, 29 Apr 2021 08:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=XEhU+ZUXJ0D8ZzH9sw0Z+rBj7xRjEi/gGM1PrvN6oNY=;
        b=pZmxBIJDyPi3Xoj4anniaPfl/t4qpKSHQG3fP6F/B2jVysAOHw05kzYFJPM0ENCWus
         9zYx9a54I02meUKXzw/OLxSdbIEQl/s2IidUHUu2xPW8Du13CLh6HBSqHuU3uqGyEwIn
         +mm6C+RD2S6eAa57uBEXBVB2ECIhVoBIZ6hjSaQlbyTUyoVAGwLfBWTphFah+Sw6+b3M
         X8fobMDnmyWfxS86Kq29OyCtmdmRVi4LrT+QIDEo7yDYAw6F/UBdL0ItKPhdNLgwOVxf
         YYy6F6iGjufzQxEBYsMW/GPvDbJG5PdGwzoVMZWZbDIPhSXO2qD8dT2oJp0bAozx+HB7
         Yi0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=XEhU+ZUXJ0D8ZzH9sw0Z+rBj7xRjEi/gGM1PrvN6oNY=;
        b=JaCMYQx4q2yHsPY0oTyNl9oaDogBl5DgYALSWJToHDcebTwzUlITfwBtXy0r71Xa7/
         E7oDsAF4FjIExP/V+BX+bKr/OuOFL3UPn1kA81Z3YYWEeCYoDbPg4aOb2MuiudrXfIfG
         CUFNsGqHK53LaW/E1/N/cB+2/RL2sQq8hP7qE28uxGMhgq/p08fBdasRS7l27VPdVFgs
         vY46+dQ8OsUcvlVEd9penSEK6uTAka6OQiFOsn1RwnHkLIHOUo4qpPp5NVPBG7xA+nAy
         0XDN6TlsroQv0MgS27ghTAY/ycG9gRkfCHSD9bOdqjDLVaKpbQn4mANGZXObww6023hQ
         V8qg==
X-Gm-Message-State: AOAM53318Nf4RqMRycdCagjF5PLws1rn6ltCzWhCfId1udCpykO8e4wL
	Wubus6nhB4x3E9k+7T/bcCY=
X-Google-Smtp-Source: ABdhPJzyr//ffn3AqhDS7oShFEnCBK39lCprlOjc7siEsoLy68lf5p6rLePlHdMwBOexWERei7sTqg==
X-Received: by 2002:a05:622a:2c9:: with SMTP id a9mr20051qtx.82.1619710374895;
        Thu, 29 Apr 2021 08:32:54 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id i6sm2286256qkf.96.2021.04.29.08.32.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 08:32:54 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 29 Apr 2021 11:32:53 -0400
Message-Id: <1D4A23B3-65D3-4EC3-AA24-A8A3EC77176F@gmail.com>
References: <JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w@lists.ettus.com>
In-Reply-To: <JoVQlePitdJLXGNFmXJNsjL9uVv5XBNJQXrfoJ1w@lists.ettus.com>
To: arjan.feta@unifi.it
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: MBRTEGW44QJ6TKNOWYPBYNQONFEHES5F
X-Message-ID-Hash: MBRTEGW44QJ6TKNOWYPBYNQONFEHES5F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to receive two signals in parallel with one TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MBRTEGW44QJ6TKNOWYPBYNQONFEHES5F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6837370165182922620=="


--===============6837370165182922620==
Content-Type: multipart/alternative; boundary=Apple-Mail-0BBF9C89-51F5-4A31-9ED0-4918868F8638
Content-Transfer-Encoding: 7bit


--Apple-Mail-0BBF9C89-51F5-4A31-9ED0-4918868F8638
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ignore the printing on the front panel. It is designed for the more usual ca=
se of a transceiver card which has a Tx/RX and RX2 input.=20

For TwinRx the two antenna choices are named =E2=80=9CRX1=E2=80=9D and =E2=80=
=9CRX2=E2=80=9D. They are routed to the SmA on the front panel labeled as TX=
/RX and RX2.=20

Either channel on the TwinRx can select either antenna input=E2=80=94there=E2=
=80=99s a switching matrix.=20

Sent from my iPhone

> On Apr 29, 2021, at 11:24 AM, arjan.feta@unifi.it wrote:
>=20
> =EF=BB=BF
> Yes, even the names at the physical SMA ports at the front end of the x300=
 are named TX/RX and RX2 (for each of the doughterboards viz. RFA and RFB):
>=20
> https://www.ettus.com/wp-content/uploads/2018/11/X300_Front-Large_2-min.jp=
g
>=20
> and the test/default programs that come with UHD, like uhd_fft for example=
, instruct to pass one antenna at a time:
>=20
> https://kb.ettus.com/TwinRX_Getting_Started_Guides#Test_and_Verify_the_Ope=
ration_of_the_USRP
>=20
> The point is I can=E2=80=99t turn on both channels for RFA contemporarily.=

>=20
> Tomorrow (CEST timezone) I=E2=80=99ll do some more tests and try different=
 configs.
>=20
> Cheers,
>=20
> Arjan
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0BBF9C89-51F5-4A31-9ED0-4918868F8638
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Ignore the printing on the front panel. It i=
s designed for the more usual case of a transceiver card which has a Tx/RX a=
nd RX2 input.&nbsp;<div><br></div><div>For TwinRx the two antenna choices ar=
e named =E2=80=9CRX1=E2=80=9D and =E2=80=9CRX2=E2=80=9D. They are routed to t=
he SmA on the front panel labeled as TX/RX and RX2.&nbsp;</div><div><br></di=
v><div>Either channel on the TwinRx can select either antenna input=E2=80=94=
there=E2=80=99s a switching matrix.&nbsp;<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 29, 2021=
, at 11:24 AM, arjan.feta@unifi.it wrote:<br><br></blockquote></div><blockqu=
ote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Yes, even the names at the ph=
ysical SMA ports at the front end of the x300 are named TX/RX and RX2 (for e=
ach of the doughterboards viz. RFA and RFB):</p><p>https://www.ettus.com/wp-=
content/uploads/2018/11/X300_Front-Large_2-min.jpg</p><p>and the test/defaul=
t programs that come with UHD, like <em>uhd_fft</em> for example,  instruct t=
o pass one antenna at a time:</p><p>https://kb.ettus.com/TwinRX_Getting_Star=
ted_Guides#Test_and_Verify_the_Operation_of_the_USRP</p><p>The point is I ca=
n=E2=80=99t turn on both channels for RFA contemporarily.</p><p>Tomorrow (CE=
ST timezone) I=E2=80=99ll do some more tests and try different configs.</p><=
p>Cheers,</p><p>Arjan</p><p><br></p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-0BBF9C89-51F5-4A31-9ED0-4918868F8638--

--===============6837370165182922620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6837370165182922620==--
