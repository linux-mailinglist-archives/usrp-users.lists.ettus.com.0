Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C860B47B292
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 19:07:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23D0C384E80
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 13:07:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lqqe4VbM";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B0FB384DBC
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 13:07:00 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id fo11so10134297qvb.4
        for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 10:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=6AtttLDemW1jiIaTMYS20+4/ad+sEJux28vDyG+uJUo=;
        b=lqqe4VbMeMvfUTJZZjlkYCa5jmzvX4dw2ho9GiS4CEzy6z3BqGGceaAuZEoSm4W91c
         QvQ88WMmcg7z8tr1Lz4M0hKUHErEbmY9d0m9UhW/roLym6rv+irNurUk5Fr9ct1pLIlH
         inSXc41gAaJG2tdHqRBmJJv4SP/2M4WSQOJj01xpCG86aGWKY7BfobNWrYrko8EA8C+r
         Dh62MdniigT3+TD3p/gM2bn0KkeUa5eHXPgiLkMnEr3eKGEfGyldJ8QzTgR2XWRdZFnp
         Ake0hhYNPIVYTDRvfZrX08aYYTZALNREbNMNPMhYnTRqX/oZLODkiYRyXXIXFSO4TfFW
         U5qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=6AtttLDemW1jiIaTMYS20+4/ad+sEJux28vDyG+uJUo=;
        b=b2PmDtBiWgV0edBduJJtBaZy03DOYvDFDpmLT4IXc3YjQMvs+urm6+gew3v7UEtpsg
         p49N4sd1MH4eq54AuGzY7R0gn1Zb7R0Bf/RR+3pn0+ajls4Lp7dYj2zyLVusBU7/7go9
         wYRYzkTgg+NG8RbJs3mkSaVpJ2H/ju7L3hTbqAfpM5IWt+9C0TM58wXAQ0XFz0SbSFyj
         L+8S216+XIUOpK99UVudJTYp+8VzzCfc8WmARb1rrWDgZPDdemWTCGve07vqS8Nak8e6
         9Zhn18p9/9N97utcXUNlIc9ZRyE1e9dnxgzAk4/tjZFO/+AL+pQA/+sjfocG032OWRP4
         Bljg==
X-Gm-Message-State: AOAM531DtiiBiN6AcIK+aJv62ou2mLjq/T/zIsQtl0pIM4Sy1VTjcu6C
	RT5x3f3pz9mxEYz3g00Un1s=
X-Google-Smtp-Source: ABdhPJyjUcGEHu7OeSiOWQPH6sBmqRtsl2U70YXIzzo5TtuA7Db7PT1zJ7YhwVBQp3aDFMW4F4V/2Q==
X-Received: by 2002:a05:6214:c81:: with SMTP id r1mr13827794qvr.10.1640023619674;
        Mon, 20 Dec 2021 10:06:59 -0800 (PST)
Received: from smtpclient.apple ([2600:380:9053:c7f5:6c42:6fb3:dd86:200f])
        by smtp.gmail.com with ESMTPSA id z10sm15619981qtw.71.2021.12.20.10.06.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 10:06:59 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 20 Dec 2021 13:06:58 -0500
Message-Id: <092E9052-0EF0-469A-85F1-03A03FD35BD2@gmail.com>
References: <CAB__hTSYx56Lezg=+2xdm766gHH=w3jTWdZkdxtuLPcg9gEBuw@mail.gmail.com>
In-Reply-To: <CAB__hTSYx56Lezg=+2xdm766gHH=w3jTWdZkdxtuLPcg9gEBuw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: 43TRLPE6THKVR4MBS66GKHISTHZ6QUXQ
X-Message-ID-Hash: 43TRLPE6THKVR4MBS66GKHISTHZ6QUXQ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Michael Hermann <michael.hermann@hotmail.de>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus FPGA-only flowgraphs in GNUradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/43TRLPE6THKVR4MBS66GKHISTHZ6QUXQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0069550580579872023=="


--===============0069550580579872023==
Content-Type: multipart/alternative; boundary=Apple-Mail-7E43C006-61D3-4C3A-99B1-10F427BFE667
Content-Transfer-Encoding: 7bit


--Apple-Mail-7E43C006-61D3-4C3A-99B1-10F427BFE667
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob, I think that requires (or used to require) a patch. The fixes to the DD=
C/DUC may have been merged, but i think the patch also added an option to th=
e RFNoC =E2=80=98graph=E2=80=99 block to set skip propagation =3D True. That=
 may have been related to the bugs in DDC/DUC. Unsure as it=E2=80=99s been a=
 few months since I worked with it.=20

<end transmission>

> On Dec 20, 2021, at 11:53, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Not sure if this will be helpful, but there is an example UHD program call=
ed rfnoc_radio_loopback which I think does a similar function.
> Rob
>=20
>> On Mon, Dec 20, 2021 at 10:00 AM Paul Atreides <maud.dib1984@gmail.com> w=
rote:
>> For what it=E2=80=99s worth, the RFNoC blocks are included in GNURadio 3.=
9 in both maint-3.9 and tag 3.9.4
>> I haven=E2=80=99t tested them yet, but it appears as though they are acti=
vely being maintained.=20
>>=20
>> <end transmission>
>>=20
>> > On Dec 20, 2021, at 05:26, Michael Hermann <michael.hermann@hotmail.de>=
 wrote:
>> >=20
>> > =EF=BB=BFHello,
>> >=20
>> > i am currently working on a small project using an USRP X310 combined w=
ith UHD 4.0, gr-ettus 3.8 and GNUradio 3.8 on Ubuntu 20.04.
>> > The final goal would be to implement the following flowgraph on an FPGA=
 without transferring data to the host in between:
>> >=20
>> > RX Radio ( -> DDC) -> FIR (-> DUC) -> TX Radio
>> >=20
>> > I followed the workshop example and implemented the gain block successf=
ully and it works for the mentioned examples. I tried to implement the above=
 mentioned flowgraph with the gain block instead of a FIR filter for testing=
 purposes. This setup does not seem to work correctly even tough GNUradio do=
es not display any errors messages. The TX Radio does not transmit a signal,=
 even if there is an input on the RX Radio Part. Weirdly enough, if i use th=
e following flowgraph
>> >=20
>> > RX Radio  -> DDC -> RX Streamer -> TX Streamer -> gain -> DUC -> TX Rad=
io
>> >=20
>> > the setup works and successfully relays the signal but routes the data t=
hrough the host which i want to avoid since the goal is to fully process the=
 signal on the FPGA.
>> >=20
>> > Greetings and thanks in advance,
>> > Michael
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-7E43C006-61D3-4C3A-99B1-10F427BFE667
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Rob, I think that requires (or used to requ=
ire) a patch. The fixes to the DDC/DUC may have been merged, but i think the=
 patch also added an option to the RFNoC =E2=80=98graph=E2=80=99 block to se=
t skip propagation =3D True. That may have been related to the bugs in DDC/D=
UC. Unsure as it=E2=80=99s been a few months since I worked with it.&nbsp;<b=
r><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D"-webkit=
-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-composition-fill-c=
olor: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color: rgba(7=
7, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D"ltr">=
<br><blockquote type=3D"cite">On Dec 20, 2021, at 11:53, Rob Kossler &lt;rko=
ssler@nd.edu&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite">=
<div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Not sure if this will be helpful,=
 but there is an example UHD program called rfnoc_radio_loopback which I thi=
nk does a similar function.<div>Rob</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 20, 2021 at 10:00 AM Pau=
l Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>For what it=E2=80=99s worth, the RFNoC blocks are included in GNURadio 3.9 i=
n both maint-3.9 and tag 3.9.4<br>
I haven=E2=80=99t tested them yet, but it appears as though they are activel=
y being maintained. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Dec 20, 2021, at 05:26, Michael Hermann &lt;<a href=3D"mailto:michae=
l.hermann@hotmail.de" target=3D"_blank">michael.hermann@hotmail.de</a>&gt; w=
rote:<br>
&gt; <br>
&gt; =EF=BB=BFHello,<br>
&gt; <br>
&gt; i am currently working on a small project using an USRP X310 combined w=
ith UHD 4.0, gr-ettus 3.8 and GNUradio 3.8 on Ubuntu 20.04.<br>
&gt; The final goal would be to implement the following flowgraph on an FPGA=
 without transferring data to the host in between:<br>
&gt; <br>
&gt; RX Radio ( -&gt; DDC) -&gt; FIR (-&gt; DUC) -&gt; TX Radio<br>
&gt; <br>
&gt; I followed the workshop example and implemented the gain block successf=
ully and it works for the mentioned examples. I tried to implement the above=
 mentioned flowgraph with the gain block instead of a FIR filter for testing=
 purposes. This setup does not seem to work correctly even tough GNUradio do=
es not display any errors messages. The TX Radio does not transmit a signal,=
 even if there is an input on the RX Radio Part. Weirdly enough, if i use th=
e following flowgraph<br>
&gt; <br>
&gt; RX Radio&nbsp; -&gt; DDC -&gt; RX Streamer -&gt; TX Streamer -&gt; gain=
 -&gt; DUC -&gt; TX Radio<br>
&gt; <br>
&gt; the setup works and successfully relays the signal but routes the data t=
hrough the host which i want to avoid since the goal is to fully process the=
 signal on the FPGA.<br>
&gt; <br>
&gt; Greetings and thanks in advance,<br>
&gt; Michael<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-7E43C006-61D3-4C3A-99B1-10F427BFE667--

--===============0069550580579872023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0069550580579872023==--
