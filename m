Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A75F47B1C0
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 18:01:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30F2D3851D0
	for <lists+usrp-users@lfdr.de>; Mon, 20 Dec 2021 12:01:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="G+SdoBTt";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 18E84384A9C
	for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 12:00:41 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id f186so30732008ybg.2
        for <usrp-users@lists.ettus.com>; Mon, 20 Dec 2021 09:00:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oPSPmX9HfqaCQei+O4DEnBZWAXfauT/UONxE/3WcOew=;
        b=G+SdoBTtVL58D4/j8x8p59i+9RDJ+DHnLiOzTjZtscgJbNm+dxqogkjuLORqPdXXb9
         SgGrEMzDsGjmTaMFnQl7IF2Dl1cIqXIjb6wZ9W0WDS3XlexkqpZKXxx6tTydB3TJAsvF
         gxfEZMIv84iAHo+otIHuLoAiooq36+Qtph19hXuSk6TvlmedQgndlK8RZfso/Vu0EfLT
         DF6fD30VUI57q2mi4osEqoUTZERmu1wRGfuF5WOnp8vOzpYCU7yEvOzWQ0TbLb3YVnn7
         LyKbgrWUQ/e9se8uIA4ULyoIrLoDQGWGqve+X20RKmQdzUxL+kr/nyAk/UTIXMcB5YFU
         SfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oPSPmX9HfqaCQei+O4DEnBZWAXfauT/UONxE/3WcOew=;
        b=g1v8X63FbcxR18Ms20sQ7lQ/f6NtFbfhfgqgvr8/rxVvxdCilkwKDhV50F6Kc8rjK3
         jr9KKqI9x7dF6zVoSpAkukPYnAK0QGsHqhVBCIefy3k3ZbiSSvQrPIezbKCXqQRWDtPU
         oWi2hY6eLgiLzCebv4EMvWMdlcauI/ko4lgs4q7Zct0UEVdgHMoM33tgDZ1uI/MBKPbi
         ZlHsKvFG2dg3dVRTQ7C2k4oBzgWA2KcrsyhdD7KJxXOUIm/VvtMVuDdR1fYu97V83M4R
         yf7W9ZiH86T1LtLlqrTyuzJ5Rp200gaQ/uu5IFnNuVOFyXom+uJVnPwbALFgakn7oWfZ
         kW+A==
X-Gm-Message-State: AOAM530TGUwqsiJnF+LFRaHuhLyDvFOhCvodRkmE0XAN+0ipfwBg3gpY
	TSAU78JY7MM4JGbbwkDDGv12hDrFazVpebHsr7Sk5LmN7RY=
X-Google-Smtp-Source: ABdhPJx/3xCnHZjD7nqi7NiZlfqi+oCwhMWuLl367C7D0g5yDFOYBSRBEMpxKjAjHdJoS7e9axZ0Vl/ZlnF65xcZlU0=
X-Received: by 2002:a25:d10:: with SMTP id 16mr25491901ybn.144.1640019180225;
 Mon, 20 Dec 2021 08:53:00 -0800 (PST)
MIME-Version: 1.0
References: <DB8PR09MB370832A1BDA187238CCD6A5D957B9@DB8PR09MB3708.eurprd09.prod.outlook.com>
 <6671CB8A-6924-4003-A6D4-5F7E4DA0022A@gmail.com>
In-Reply-To: <6671CB8A-6924-4003-A6D4-5F7E4DA0022A@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 20 Dec 2021 10:52:49 -0600
Message-ID: <CAB__hTSYx56Lezg=+2xdm766gHH=w3jTWdZkdxtuLPcg9gEBuw@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: YWZR27SZXM7G5VI44D3NOJS36CPH37UT
X-Message-ID-Hash: YWZR27SZXM7G5VI44D3NOJS36CPH37UT
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Michael Hermann <michael.hermann@hotmail.de>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus FPGA-only flowgraphs in GNUradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YWZR27SZXM7G5VI44D3NOJS36CPH37UT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5257225524586285655=="

--===============5257225524586285655==
Content-Type: multipart/alternative; boundary="000000000000a9df1505d396b8cb"

--000000000000a9df1505d396b8cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Not sure if this will be helpful, but there is an example UHD program
called rfnoc_radio_loopback which I think does a similar function.
Rob

On Mon, Dec 20, 2021 at 10:00 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> For what it=E2=80=99s worth, the RFNoC blocks are included in GNURadio 3.=
9 in both
> maint-3.9 and tag 3.9.4
> I haven=E2=80=99t tested them yet, but it appears as though they are acti=
vely
> being maintained.
>
> <end transmission>
>
> > On Dec 20, 2021, at 05:26, Michael Hermann <michael.hermann@hotmail.de>
> wrote:
> >
> > =EF=BB=BFHello,
> >
> > i am currently working on a small project using an USRP X310 combined
> with UHD 4.0, gr-ettus 3.8 and GNUradio 3.8 on Ubuntu 20.04.
> > The final goal would be to implement the following flowgraph on an FPGA
> without transferring data to the host in between:
> >
> > RX Radio ( -> DDC) -> FIR (-> DUC) -> TX Radio
> >
> > I followed the workshop example and implemented the gain block
> successfully and it works for the mentioned examples. I tried to implemen=
t
> the above mentioned flowgraph with the gain block instead of a FIR filter
> for testing purposes. This setup does not seem to work correctly even tou=
gh
> GNUradio does not display any errors messages. The TX Radio does not
> transmit a signal, even if there is an input on the RX Radio Part. Weirdl=
y
> enough, if i use the following flowgraph
> >
> > RX Radio  -> DDC -> RX Streamer -> TX Streamer -> gain -> DUC -> TX Rad=
io
> >
> > the setup works and successfully relays the signal but routes the data
> through the host which i want to avoid since the goal is to fully process
> the signal on the FPGA.
> >
> > Greetings and thanks in advance,
> > Michael
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a9df1505d396b8cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Not sure if this will be helpful, but there is an example =
UHD program called rfnoc_radio_loopback which I think does a similar functi=
on.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Dec 20, 2021 at 10:00 AM Paul Atreides &lt;<a href=
=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">For what it=E2=80=
=99s worth, the RFNoC blocks are included in GNURadio 3.9 in both maint-3.9=
 and tag 3.9.4<br>
I haven=E2=80=99t tested them yet, but it appears as though they are active=
ly being maintained. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Dec 20, 2021, at 05:26, Michael Hermann &lt;<a href=3D"mailto:micha=
el.hermann@hotmail.de" target=3D"_blank">michael.hermann@hotmail.de</a>&gt;=
 wrote:<br>
&gt; <br>
&gt; =EF=BB=BFHello,<br>
&gt; <br>
&gt; i am currently working on a small project using an USRP X310 combined =
with UHD 4.0, gr-ettus 3.8 and GNUradio 3.8 on Ubuntu 20.04.<br>
&gt; The final goal would be to implement the following flowgraph on an FPG=
A without transferring data to the host in between:<br>
&gt; <br>
&gt; RX Radio ( -&gt; DDC) -&gt; FIR (-&gt; DUC) -&gt; TX Radio<br>
&gt; <br>
&gt; I followed the workshop example and implemented the gain block success=
fully and it works for the mentioned examples. I tried to implement the abo=
ve mentioned flowgraph with the gain block instead of a FIR filter for test=
ing purposes. This setup does not seem to work correctly even tough GNUradi=
o does not display any errors messages. The TX Radio does not transmit a si=
gnal, even if there is an input on the RX Radio Part. Weirdly enough, if i =
use the following flowgraph<br>
&gt; <br>
&gt; RX Radio=C2=A0 -&gt; DDC -&gt; RX Streamer -&gt; TX Streamer -&gt; gai=
n -&gt; DUC -&gt; TX Radio<br>
&gt; <br>
&gt; the setup works and successfully relays the signal but routes the data=
 through the host which i want to avoid since the goal is to fully process =
the signal on the FPGA.<br>
&gt; <br>
&gt; Greetings and thanks in advance,<br>
&gt; Michael<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a9df1505d396b8cb--

--===============5257225524586285655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5257225524586285655==--
