Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CDFAC0CC1
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 15:28:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52AD63851B5
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 09:28:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747920522; bh=I4z+N1q29i8DnkbDOF3n02yriau4GR8+DFNUa+pDBUA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JEk1DqKdDskaJBUHtWVywtbEgP+6QWlhVDtOGO/1D6n6pdK3Bai++s/DrbdN7BqU0
	 3ceL8Ogk5LOf1DJBi/ir0M1rvKaHV9ao0AqUybmK1RMu5GqBHKn33ctDw+MYDvwr4v
	 futgSH98lM91jyZnjePo8pKEc1ojqof5w4Kb9ZGmfK7Bx7g02hnXTexO+cFMxURgWY
	 JhtD2XWqjF8APBbX2DxZZoFYFe+wSthQBBuUJd/AXdXl8aAqQFn6ucmYNjOPKr04Kw
	 p2rTkLx1GKJ0snCa/BTieD60irTRESOtGYqD/jV5SUkooSKWL/GgpE0rHo1GcFj6d8
	 6j8CHvEiLb7TA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id BD4F03849B1
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 09:27:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IyTYxClr";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60119cd50b6so10507191a12.0
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 06:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1747920468; x=1748525268; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cSyranBoi0g0dJI7vqerZZt/Fia+qDhhg3+4JEl5IWs=;
        b=IyTYxClrCBep6IhvYZmasIbkRPBibfVQDlR/O6h1phECTZdl1l9iNA91CYWSYDJfec
         /3OFLJsB53AdnW5/1p+NnPl9MIt3haMls2PhZ7HbN7nP4qJC6sN+W3uYGgtHarHKToQ7
         kl/4Tjtir+Ib+3/adMbdlLStW9ih+NpE3M1bp7yXpcWMrdesyYTPRcdGkYld3m/nA0FF
         SGP4sKN1KH+hnuVo8wRZjt94tpc/C8geedJiKBr6qjA9geSP9UYU6pGWwHTWomZqU3A+
         fQBGpsS4F6I49LEe6qdeENUBcIrgQw/lnrikHZNo4LcR7j2olwshZJ1NeNOHizz7GfX6
         zwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747920468; x=1748525268;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSyranBoi0g0dJI7vqerZZt/Fia+qDhhg3+4JEl5IWs=;
        b=W5eMROVyzI2UdpxjFM1d/u7X8wTG/C77MTrSe27i4EX94w9oU33JTIugzj3xZDsxmC
         CHzFAQOtLnYrnn0DhTm9VnrmcOk2cgCl5OS/0fsdWSjeOWCK7UI4qtV3pIXJB+Lm/yvg
         WDF7fa8cTAwAYpeqKgJA7hKh2Hh518+GiD5UsFzghfo1XR1T+It6DZhb2v5yu/mMsuWg
         aEwOK7oMRaUj8TZ1xWHZn0QIusw5B5yLWD1l/vTc2imhACderMiWLLqKuSvn7MDbLiQM
         GYOPMiRtqKiGSIfjfskCmmkUVbxqPKt9dAkgK2w9uWxCoCn0c9D24yLutv+zV1zNr9pw
         ZwBw==
X-Gm-Message-State: AOJu0YwLVbJ/JXUzzAhQY98a3m6HUSNXNQqfC5zZpw45HSXjf5QuH0Sd
	90o8dcvI98cTVn5Az2RdhEPIuXAqx1SM8E0PNhrrc7EAm2TRfxnP2kJJab3IjI6bho109bWuTlw
	vqK9Bp0D0RZUgm2nGJ+OjWKLzWSPz8wnkRfG0Y5DCTA96lkkwMMI=
X-Gm-Gg: ASbGncuk/9dva657rKnNqubFnY/ppTue0m23C2afzh/yn5ChCbrF/A+8DeKfleLi1Js
	c2CnQ5hZ1+5jRdll/fP+R6rDRW+UUdy0mFdVPZFlYP0NZ5w1obhHo95Cczm2LIY1894DB+ioBcZ
	ry2QwdRDzZiVFCxTsvlNsLfgX1xJeK278f
X-Google-Smtp-Source: AGHT+IHJBaMl6Vp6atO6zFEPiSyGiO8FAcNyp1ycQGCnl+EXq1nZ7zz3tEjG28G+8f5Srzird6xaSNFaZvM6olRXjlg=
X-Received: by 2002:a05:6402:50cc:b0:601:9dc3:2795 with SMTP id
 4fb4d7f45d1cf-6019dc32e17mr18126118a12.7.1747920468414; Thu, 22 May 2025
 06:27:48 -0700 (PDT)
MIME-Version: 1.0
References: <06fc5d04db3c4177904569150e0e304f@vastech.co.za>
In-Reply-To: <06fc5d04db3c4177904569150e0e304f@vastech.co.za>
Date: Thu, 22 May 2025 09:27:36 -0400
X-Gm-Features: AX0GCFutZXZ3sEhTclOBrf2Tb2GlnoDK8nhJHXWZAZ-z4qqfmRjEsUkJ9P2oDBc
Message-ID: <CAB__hTSsONuCyQnpOMbSviitzzquiCP-r1evSbYg14cA1kLE-g@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: 3KV6CMF7JWRRFVQO7BQ5EMSHTIEZVI6I
X-Message-ID-Hash: 3KV6CMF7JWRRFVQO7BQ5EMSHTIEZVI6I
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc loopback to tx ports, and other warnings
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3KV6CMF7JWRRFVQO7BQ5EMSHTIEZVI6I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2551724457918134334=="

--===============2551724457918134334==
Content-Type: multipart/alternative; boundary="0000000000009daf580635b9722d"

--0000000000009daf580635b9722d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kevin,
Try issuing the stream command directly on the Radio block rather than the
rx_streamer.  I don't know why you are getting the warnings you are
getting, but trying this step might produce a different result.

On another note, since you are using timed commands, there will be a time
stamp in your received data stream. When this stream arrives at the Tx
Radio after passing through the loopback path, it will be considered "Late"
at the Tx Radio because the time stamp has passed.  Your block will need to
add an offset to the time stamp (or remove it) so that it won't be late
when arriving at the Tx Radio.
Rob

On Thu, May 22, 2025 at 4:45=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi,
>
>
>
> I have an rfnoc block with two output ports which is feeding the splitter
> block to duplicate each port.
>
>
>
> One pair is used to stream to the host, and the other is looped back to
> the radio via the DUC block.
>
>
>
> The active connections are reported as:
>
>
>
> Active connections:
>
> * 0/Radio#0:0=3D=3D>0/PolConverter#0:0
>
> * 0/Radio#0:1=3D=3D>0/PolConverter#0:1
>
> * 0/PolConverter#0:0=3D=3D>0/SplitStream#0:0
>
> * 0/SplitStream#0:0-->0/DUC#0:0
>
> * 0/PolConverter#0:1=3D=3D>0/SplitStream#0:1
>
> * 0/SplitStream#0:1-->0/DUC#0:1
>
> * 0/DUC#0:0=3D=3D>0/Radio#0:0
>
> * 0/DUC#0:1=3D=3D>0/Radio#0:1
>
> * 0/SplitStream#0:2-->RxStreamer#0:0
>
> * 0/SplitStream#0:3-->RxStreamer#0:1
>
>
>
> I=E2=80=99m getting this warning when trying to stream (to the host and t=
he TX):
>
>
>
> [WARNING] [0/Radio#0] Received stream command, but not to output port!
> Ignoring.
>
>
>
> Along with debug info:
>
>
>
> [DEBUG] [RxStreamer#0] Received overrun message on port 0
>
> [DEBUG] [RxStreamer#0] Received overrun message on port 1
>
> L[DEBUG] [RxStreamer#0] Received late command message on port 0
>
> [DEBUG] [RxStreamer#0] Received late command message on port 1
>
> D
>
>
>
> I start the streaming with a timed command to the RX streamer like:
>
>
>
> rx_stream->issue_stream_cmd(stream_cmd);
>
>
>
> I=E2=80=99m not getting the red =E2=80=9CTX=E2=80=9D led illuminated on t=
he N300, and I don=E2=80=99t
> understand where or why these warnings are being created?
>
>
>
> Previous posts have mentioned this link (
> https://corvid.io/2017/04/22/stupid-rfnoc-tricks-loopback/) has helped
> but it seems to be down.
>
>
>
> How does one get a loopback in the fpga from rfnoc blocks to the radio TX=
?
>
>
>
> BTW: in the firmware I tie TEOV and TEOB to my TLAST in my custom block.
>
>
>
> Many thanks, Kevin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009daf580635b9722d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Kevin,<div>Try issuing the stream comm=
and directly on the Radio block rather than the rx_streamer.=C2=A0 I don&#3=
9;t know why you are getting the warnings you are getting, but trying this =
step might produce a different result.=C2=A0</div><div><br></div><div>On an=
other note, since you are using timed commands, there will be a time stamp =
in your received data stream. When this stream arrives at the Tx Radio afte=
r passing through the loopback path, it will be considered &quot;Late&quot;=
 at the Tx Radio because the time stamp has passed.=C2=A0 Your block will n=
eed to add an offset to the time stamp (or remove it) so that it won&#39;t =
be late when arriving at the Tx Radio.</div><div>Rob</div></div><br><div cl=
ass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, May 22, 2025 at 4:45=E2=80=AFAM Kevin Williams &lt;<a href=3D"=
mailto:kevin.williams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg-4917872208500381359"><div lang=3D"EN-ZA"><div class=3D"m_-491787220=
8500381359WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I have an =
rfnoc block with two output ports which is feeding the splitter block to du=
plicate each port.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">One pair is used to stream to the host, and the other is looped=
 back to the radio via the DUC block.<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">The active connections are reported as:<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"f=
ont-family:&quot;Courier New&quot;">Active connections:<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot=
;Courier New&quot;">* 0/Radio#0:0=3D=3D&gt;0/PolConverter#0:0<u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family=
:&quot;Courier New&quot;">* 0/Radio#0:1=3D=3D&gt;0/PolConverter#0:1<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-=
family:&quot;Courier New&quot;">* 0/PolConverter#0:0=3D=3D&gt;0/SplitStream=
#0:0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" st=
yle=3D"font-family:&quot;Courier New&quot;">* 0/SplitStream#0:0--&gt;0/DUC#=
0:0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" sty=
le=3D"font-family:&quot;Courier New&quot;">* 0/PolConverter#0:1=3D=3D&gt;0/=
SplitStream#0:1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/SplitStream#0:=
1--&gt;0/DUC#0:1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/DUC#0:0=3D=3D&=
gt;0/Radio#0:0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/DUC#0:1=3D=3D&gt;=
0/Radio#0:1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US" style=3D"font-family:&quot;Courier New&quot;">* 0/SplitStream#0:2--&gt=
;RxStreamer#0:0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">* 0/SplitStream#0:=
3--&gt;RxStreamer#0:1<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">I=E2=80=99m getting this warning when trying to stream (to t=
he host and the TX):<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">[WARNING] [0/Ra=
dio#0] Received stream command, but not to output port! <span style=3D"colo=
r:red">Ignoring</span>.<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">Along with debug info:<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quo=
t;">[DEBUG] [RxStreamer#0] Received overrun message on port 0<u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family=
:&quot;Courier New&quot;">[DEBUG] [RxStreamer#0] Received overrun message o=
n port 1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
" style=3D"font-family:&quot;Courier New&quot;">L[DEBUG] [RxStreamer#0] Rec=
eived late command message on port 0<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;"=
>[DEBUG] [RxStreamer#0] Received late command message on port 1<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-fami=
ly:&quot;Courier New&quot;">D</span><span lang=3D"EN-US"><u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I start the streaming wi=
th a timed command to the RX streamer like:<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New=
&quot;">rx_stream-&gt;issue_stream_cmd(stream_cmd);<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m not getting the re=
d =E2=80=9CTX=E2=80=9D led illuminated on the N300, and I don=E2=80=99t und=
erstand where or why these warnings are being created?<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">Previous posts have mention=
ed this link (<a href=3D"https://corvid.io/2017/04/22/stupid-rfnoc-tricks-l=
oopback/" target=3D"_blank">https://corvid.io/2017/04/22/stupid-rfnoc-trick=
s-loopback/</a>) has helped but it seems to be down.<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">How does one get a loopback i=
n the fpga from rfnoc blocks to the radio TX?<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">BTW: in the firmware I tie TEOV and =
TEOB to my TLAST in my custom block.<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">Many thanks, Kevin<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></=
div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div></div>

--0000000000009daf580635b9722d--

--===============2551724457918134334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2551724457918134334==--
