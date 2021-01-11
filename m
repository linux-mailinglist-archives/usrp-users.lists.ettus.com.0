Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2182A2F22A9
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 23:23:59 +0100 (CET)
Received: from [::1] (port=58444 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kz5bQ-0003CW-HL; Mon, 11 Jan 2021 17:23:56 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:44828)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kz5bM-00035i-4U
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 17:23:52 -0500
Received: by mail-ot1-f45.google.com with SMTP id r9so392576otk.11
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 14:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=FrDxMgEj2YMvE31TcG3YEqfhWptSXamCN5Dwu1TMv3w=;
 b=WcwQstV89QCJboKJ5A4+jK7HhyH1yZ2vC01wUL4D6KrkM0xkJ9h4YlGlOY7bRDz3Kf
 FmFnt28+EM9+o7GvcoLOhwdC32FVeNYTC+ANFSoypad4OnIc8qKmyZPZLgP2bH0EOunT
 t8a1pRjWQB11cM15uAcWhTYTcXYpaU8peKscR5j92PcruTCr8D56II8BHAoF4eVVEeB2
 26Vt0Y1debKvVZs7cUzgq0aAy7iTtentuXiz0QUjik6eRCqXI5XExqtiku7LHsj5gM+W
 el4gdTaQdkg65eQalZFB8q/7OgYf6sBMKPMp1qAWT84JYN8LKvsnKm8D8p35HxrJtya2
 ZxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=FrDxMgEj2YMvE31TcG3YEqfhWptSXamCN5Dwu1TMv3w=;
 b=H89+4h3ruyupbsA5ak2TVkJvz2/oYajBtWIrGxWmFJuTzZb4NE85FKZ5oGrOVKGJn9
 kp9JaZRQR5RUd5ziM+cxAabXDe0ivzqivDeKCQD+zadI7XPNneKrC/MDm95bjUxF5Pjl
 fd9SrWewjui8WPZ3Q/3Pe0iaN7O500IJkU7d73LqdskM312C1JsWQbdaON7qKJFEFbw1
 hB5f9HvB6to2q3nuo3r17OWpWF1whyee6/42Vy/63C5m9HiU/Em7SXCUlUmDMROlmc4z
 QwYYL4py+OsrYlzKZBjUWteizhP7Rl9VN2w14p1TnZrwnmDPKDGCArC7FCQNbNXiLw6h
 1wOQ==
X-Gm-Message-State: AOAM532q2xnPA3PHOBm4Pr+bRqXv/HQX/vusft8t5oTUTPmfEhLkIXSW
 NGxQTGWObM+MBaY1liCjLV8RNqeQNJEeNO6gZjzHYg==
X-Google-Smtp-Source: ABdhPJzjWQE9Q+/V6RSMAH8/AYc0IocR5U3JcRyuT1RolGSms7o6NvVuCCYAJg1+MmPnqAvN8o0kE2vpbSLUSVNK7D4=
X-Received: by 2002:a9d:6a97:: with SMTP id l23mr869068otq.58.1610403790848;
 Mon, 11 Jan 2021 14:23:10 -0800 (PST)
MIME-Version: 1.0
References: <1A0C1E24-F805-4627-8830-F3F87525CFCD@ulb.be>
 <CAFche=gs-7qDfLzUW5tds5ihgdLbV2_-vD6+=VaSsNBknBrh-w@mail.gmail.com>
 <20210111132638.ef7xc37dp2tmq5wl@barbe>
In-Reply-To: <20210111132638.ef7xc37dp2tmq5wl@barbe>
Date: Mon, 11 Jan 2021 17:23:00 -0500
Message-ID: <CAB__hTRBwuyiTaUbTdArLj8M6xwjUn7oW8cSgCQFdkAo=M0+Mw@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC Specification Questions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8123664224856487810=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8123664224856487810==
Content-Type: multipart/alternative; boundary="000000000000e64e2205b8a75929"

--000000000000e64e2205b8a75929
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 11, 2021 at 8:27 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 04/01/21 16:09, Wade Fife wrote:
> > On Wed, Dec 23, 2020 at 12:37 AM C=C3=A9dric Hannotier via USRP-users <
> > usrp-users@lists.ettus.com> wrote:
> > [...]
> > >  2. In AXI-Stream Data (2.3.3.3), I have no control over CHDR header.
> > > What happens when the block drop samples (e.g. keep_one_in_n.v)?
> > > Is the NoC Shell updating header field automatically (eg. length
> field)?
> > >  2bis. What happends if I drop all samples of a packet?
> >
> > When using AXI-Stream Data the length is automatically calculated,
> > assuming SIDEBAND_AT_END is set to true (which is the default). If you
> drop
> > all samples, then you don't put anything into the NoC Shell, so no pack=
et
> > would be generated.
>
> The Spec. only tells:
> "If SIDEBAND_AT_END is True then these signals must be valid on
> the last transfer of each packet (i.e., when tlast is asserted)."
>
> There is no mention of "automatically calculated" field.
>
> Furthermore, signal derived from tuser (e.g. tlength, teov, etc.) are
> described as "optional".
> However, my testbench output *some*
> "Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length
> Time: 4575 ns  Iteration: 0  Process:
> /PkgChdrBfm/ChdrBfm(CHDR_W=3D64,USER_WIDTH=3D1)::get_chdr"
> as long as tlength is not driven (but somehow the transaction is still ok=
).
> This also applies when SIDEBAND_AT_END is False.
>

When you use "axis_data", I think the generated noc_shell includes a FIFO
(as part of axis_data_to_chdr) that is big enough to hold a full packet and
it counts tvalids to determine how long the actual packet is.  Thus, even
if the user supplies the sideband tlength, it will be replaced by the
sample count in axis_data_to_chdr when tlast is asserted. Since the header
precedes the data in the CHDR packet, that is the reason for the FIFO.

But, that said, I don't know why you are getting the error message.


> > >  5. In AXI-Stream Payload Context (2.3.3.2), it is stated:
> > > "NIPC: The number of items delivered per cycle.
> > > NIPC must 1 or a larger power of 2, such that ITEM_W * NIPC =3D CHDR_=
W."
> > > Does it also apply for AXI-Stream Data (2.3.3.3)?
> > > If not, what is the rule for that Data-Plane ?
> >
> > Yes. In other words, NIPC sets the width of the tdata port. It's always
> > NIPC items wide.
> >
>
> But when you look at "host/include/uhd/rfnoc/blocks/keep_one_in_n.yml",
> (NIPC * ITEM_W =3D 32) !=3D (CHDR_W =3D 64).
> What am I missing?
>

I think that the NIPC can be set to whatever you want for your block.
Although CHDR_W may be 64 such that it contains 2 items per word, your
block can request to receive 1 item per word and noc shell will take care
of this conversion (I think). In all of my blocks, I set NIPC =3D1 so that =
I
am only working with one item per cycle.

--000000000000e64e2205b8a75929
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 11, 2021 at 8:27 AM C=C3=
=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On 04/01/21 16:09, Wade Fife wrote:<br>
&gt; On Wed, Dec 23, 2020 at 12:37 AM C=C3=A9dric Hannotier via USRP-users =
&lt;<br>
&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
&gt; [...]<br>
&gt; &gt;=C2=A0 2. In AXI-Stream Data (2.3.3.3), I have no control over CHD=
R header.<br>
&gt; &gt; What happens when the block drop samples (e.g. keep_one_in_n.v)?<=
br>
&gt; &gt; Is the NoC Shell updating header field automatically (eg. length =
field)?<br>
&gt; &gt;=C2=A0 2bis. What happends if I drop all samples of a packet?<br>
&gt; <br>
&gt; When using AXI-Stream Data the length is automatically calculated,<br>
&gt; assuming SIDEBAND_AT_END is set to true (which is the default). If you=
 drop<br>
&gt; all samples, then you don&#39;t put anything into the NoC Shell, so no=
 packet<br>
&gt; would be generated.<br>
<br>
The Spec. only tells:<br>
&quot;If SIDEBAND_AT_END is True then these signals must be valid on<br>
the last transfer of each packet (i.e., when tlast is asserted).&quot;<br>
<br>
There is no mention of &quot;automatically calculated&quot; field.<br>
<br>
Furthermore, signal derived from tuser (e.g. tlength, teov, etc.) are<br>
described as &quot;optional&quot;.<br>
However, my testbench output *some*<br>
&quot;Error: ChdrPacket::axis_to_chdr: Incorrect CHDR length<br>
Time: 4575 ns=C2=A0 Iteration: 0=C2=A0 Process: /PkgChdrBfm/ChdrBfm(CHDR_W=
=3D64,USER_WIDTH=3D1)::get_chdr&quot;<br>
as long as tlength is not driven (but somehow the transaction is still ok).=
<br>
This also applies when SIDEBAND_AT_END is False.<br></blockquote><div><br><=
/div><div>When you use &quot;axis_data&quot;, I think the generated noc_she=
ll includes a FIFO (as part of axis_data_to_chdr) that is big enough to hol=
d a full packet and it counts tvalids to determine how long the actual pack=
et is.=C2=A0 Thus, even if the user supplies the sideband tlength, it will =
be replaced by the sample count in axis_data_to_chdr when tlast is asserted=
. Since the header precedes the data in the CHDR packet, that is the reason=
 for the FIFO.</div><div><br></div><div>But, that said, I don&#39;t know wh=
y you are getting the error message.</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
&gt; &gt;=C2=A0 5. In AXI-Stream Payload Context (2.3.3.2), it is stated:<b=
r>
&gt; &gt; &quot;NIPC: The number of items delivered per cycle.<br>
&gt; &gt; NIPC must 1 or a larger power of 2, such that ITEM_W * NIPC =3D C=
HDR_W.&quot;<br>
&gt; &gt; Does it also apply for AXI-Stream Data (2.3.3.3)?<br>
&gt; &gt; If not, what is the rule for that Data-Plane ?<br>
&gt; <br>
&gt; Yes. In other words, NIPC sets the width of the tdata port. It&#39;s a=
lways<br>
&gt; NIPC items wide.<br>
&gt; <br>
<br>
But when you look at &quot;host/include/uhd/rfnoc/blocks/keep_one_in_n.yml&=
quot;,<br>
(NIPC * ITEM_W =3D 32) !=3D (CHDR_W =3D 64).<br>
What am I missing?<br></blockquote><div><br></div><div>I think that the NIP=
C can be set to whatever you want for your block.=C2=A0 Although CHDR_W may=
 be 64 such that it contains 2 items per word, your block can request to re=
ceive 1 item per word and noc shell will take care of this conversion (I th=
ink). In all of my blocks, I set NIPC =3D1 so that I am only working with o=
ne item per cycle.</div><div><br></div></div></div>

--000000000000e64e2205b8a75929--


--===============8123664224856487810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8123664224856487810==--

