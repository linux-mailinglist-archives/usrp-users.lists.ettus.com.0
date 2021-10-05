Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE064229D4
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 16:00:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C95C0384324
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 10:00:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DUEmaCeh";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 9B7EF383C9D
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 09:59:53 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id i132so19860943qke.1
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 06:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=/HcUSb2N9nK3ToDvZ5DIxlkmYA6qPjVmXASrJrcS4mM=;
        b=DUEmaCehiXSAjeSBYGySgFuKuuKWx1aGNnSt5iCEwvMDHupOvj0n3mQf1DqmEHEFMU
         +t1DNf5PaAx1Hpedsdx3ZY68hmQBueX6q2+IEuOkiBQZWf9vSl5D/E39U0VNY5FjA2nT
         m4q0zswcPKvRqqIKoYHWXKjSHf0pUrEBDZhbQH3brmRkxqiSqbTpW8j96gS94jg2KXGd
         qvF3nr17RETURD50r8Nctq/Dj+x7PczZrqGrXcXykZf2R+e5Az9JdiKqKWmCljzFD7wY
         uhOnbY++AzT/JCeyCEDPuPFVyuWAfZT9GR+1ODoWQgnJXr7O2OKULpwOiz3rj0dfEZBl
         HnXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=/HcUSb2N9nK3ToDvZ5DIxlkmYA6qPjVmXASrJrcS4mM=;
        b=8I+2ErQrNAsfedrx5OWkoVNnNFxachDpkJNofS+rP6U4HcrfZTMlipT8YaB8wUHrGg
         lyJmiSgZLbT+Uxiss9ZlOv6mlAHQ0hZ3JpFYu4jOks9/RXPcDOG+1yA/YxP/Mor8xXzI
         aDgf7SKg+yVt33iMrEQr95KtksiSeOf82p5ToCqUPVEqlLzh1iq9nHYW69XmPLFL110u
         h2MI0lo7N8U05BJw7DIv8896djE9dUqw9XK13lT0kcljQLpmwDYIGTmbzbzWVd1/Vf4M
         eMnJmV5UkLFnin9ONahQpMNIfJ8OxjImB8Zu9ZR0Ft/qwoK1JID1cuBHRMUooJWyQyWx
         YXnw==
X-Gm-Message-State: AOAM530tnAwCY10vnQsxwKA3t4p95nwQR6vHeDc/zKgob5i0BN2FXEOl
	Gt9Ae/ikz5uG58ViKfV24lw4OqDftpA=
X-Google-Smtp-Source: ABdhPJzwZ1Q9WNR3XaJ5Wx27ktjik1rbddWlHP745Ai5RsAfiPGZe2IxPG99QnX7lvh4Vml6k7Xtcw==
X-Received: by 2002:a37:8a82:: with SMTP id m124mr14848660qkd.406.1633442392865;
        Tue, 05 Oct 2021 06:59:52 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id n11sm11032492qtk.92.2021.10.05.06.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 06:59:52 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 5 Oct 2021 09:59:51 -0400
Message-Id: <315204D8-C23C-49EC-847C-33708742519F@gmail.com>
References: <CAHqKquw4eJj6tO5k2e+gJdWfzRNeQaAE6AATP-eCqfNq5M86Bg@mail.gmail.com>
In-Reply-To: <CAHqKquw4eJj6tO5k2e+gJdWfzRNeQaAE6AATP-eCqfNq5M86Bg@mail.gmail.com>
To: rouba zeitoun <roubazeitoun@gmail.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: CLHYXVBALUGNI7X6EQWNBKNNL3VYVDLU
X-Message-ID-Hash: CLHYXVBALUGNI7X6EQWNBKNNL3VYVDLU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CLHYXVBALUGNI7X6EQWNBKNNL3VYVDLU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0733771130004120540=="


--===============0733771130004120540==
Content-Type: multipart/alternative; boundary=Apple-Mail-B9A817C9-73CF-426D-AE65-DF487688EE33
Content-Transfer-Encoding: 7bit


--Apple-Mail-B9A817C9-73CF-426D-AE65-DF487688EE33
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes. Try another cable.=20

Sent from my iPhone

> On Oct 5, 2021, at 3:51 AM, rouba zeitoun <roubazeitoun@gmail.com> wrote:
>=20
> =EF=BB=BF
> Good morning sir,
>=20
> The output of "uhd_usrp_probe --args type=3Db200"  is:
>=20
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.git-77-=
g919043f3
> [INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b20=
0_fw.hex...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b210_fp=
ga.bin...
> Error: RuntimeError: fx3 is in state 5
>=20
> Should I try another USB cable? or that doesn't matter?
>=20
> Have a nice day!
>=20
>=20
>=20
>=20
> =E2=80=AB=D9=81=D9=8A =D8=A7=D9=84=D8=AB=D9=84=D8=A7=D8=AB=D8=A7=D8=A1=D8=8C=
 5 =D8=A3=D9=83=D8=AA=D9=88=D8=A8=D8=B1 2021 =D9=81=D9=8A 2:15 =D8=B5 =D8=AA=
=D9=85=D8=AA =D9=83=D8=AA=D8=A7=D8=A8=D8=A9 =D9=85=D8=A7 =D9=8A=D9=84=D9=8A =D8=
=A8=D9=88=D8=A7=D8=B3=D8=B7=D8=A9 =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F=
 <=E2=80=AApatchvonbraun@gmail.com=E2=80=AC=E2=80=8F>:=E2=80=AC
>> On 2021-10-04 6:36 p.m., rouba zeitoun wrote:
>> > I tried to use an external power supply, but after I connected the=20
>> > B210 to my laptop, the led light on it turned form blue to red.
>> >
>> > No, it does not have a GPSDO.
>> >
>> > Could you please explain for me what could be the problem?
>> >
>> RED light means external power.  That is to be expected.
>>=20
>> Please share the output of
>>=20
>> uhd_usrp_probe --args type=3Db200
>>=20
>> I need to see at what point it gets into trouble.
>>=20
>> My suspicion was perhaps a power issue, and the FX3 USB2/3 processor on=20=

>> the board was experiencing a brown-out condition.
>>=20
>> But there's no way for me to tell for sure.  Really, that's how this=20
>> works.  I ask you clarifying questions, and with the answers to those
>>    questions, I can get closer to figuring out what's wrong with your boa=
rd.
>>=20
>>=20

--Apple-Mail-B9A817C9-73CF-426D-AE65-DF487688EE33
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes. Try another cable.&nbsp;<br><br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Oct 5, 2021, at 3:51 AM, rouba zeitoun &lt;roubazeitoun@gmail.com&=
gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<div dir=3D"rtl"><div dir=3D"ltr">Good morning sir,</div><div d=
ir=3D"ltr"><br></div><div dir=3D"ltr">The output of "uhd_usrp_probe --args t=
ype=3Db200"&nbsp; is:</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">[INFO=
] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.git-77-g919043=
f3<br>[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp=
_b200_fw.hex...<br>[INFO] [B200] Detected Device: B210<br>[INFO] [B200] Load=
ing FPGA image: /usr/local/share/uhd/images/usrp_b210_fpga.bin...<br>Error: R=
untimeError: fx3 is in state 5<br></div><div dir=3D"ltr"><br></div><div dir=3D=
"ltr">Should I try another USB cable? or that doesn't matter?</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">Have a nice day!</div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D9=81=D9=8A =D8=
=A7=D9=84=D8=AB=D9=84=D8=A7=D8=AB=D8=A7=D8=A1=D8=8C 5 =D8=A3=D9=83=D8=AA=D9=88=
=D8=A8=D8=B1 2021 =D9=81=D9=8A 2:15 =D8=B5 =D8=AA=D9=85=D8=AA =D9=83=D8=AA=D8=
=A7=D8=A8=D8=A9 =D9=85=D8=A7 =D9=8A=D9=84=D9=8A =D8=A8=D9=88=D8=A7=D8=B3=D8=B7=
=D8=A9 =E2=80=AAMarcus D. Leech=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"ma=
ilto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>=E2=
=80=AC=E2=80=8F&gt;:=E2=80=AC<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 2021-10-04 6:36 p.m., rouba zeitoun wrote:<br>
&gt; I tried to use an external power supply, but after I connected the <br>=

&gt; B210 to my laptop, the led light on it turned form blue to red.<br>
&gt;<br>
&gt; No, it does not have a GPSDO.<br>
&gt;<br>
&gt; Could you please explain for me what could be&nbsp;the problem?<br>
&gt;<br>
RED light means external power.&nbsp; That is to be expected.<br>
<br>
Please share the output of<br>
<br>
uhd_usrp_probe --args type=3Db200<br>
<br>
I need to see at what point it gets into trouble.<br>
<br>
My suspicion was perhaps a power issue, and the FX3 USB2/3 processor on <br>=

the board was experiencing a brown-out condition.<br>
<br>
But there's no way for me to tell for sure.&nbsp; Really, that's how this <b=
r>
works.&nbsp; I ask you clarifying questions, and with the answers to those<b=
r>
&nbsp;&nbsp; questions, I can get closer to figuring out what's wrong with y=
our board.<br>
<br>
<br>
</blockquote></div></div>
</div></blockquote></body></html>=

--Apple-Mail-B9A817C9-73CF-426D-AE65-DF487688EE33--

--===============0733771130004120540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0733771130004120540==--
