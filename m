Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AE8409DA4
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 22:03:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44D68384E16
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 16:03:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Z+lQzdza";
	dkim-atps=neutral
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D844384DED
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 16:03:06 -0400 (EDT)
Received: by mail-ot1-f44.google.com with SMTP id a20-20020a0568300b9400b0051b8ca82dfcso15041718otv.3
        for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 13:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3D5t8RB60swuDFBBQJ/jFMpdF4GAB5nk7vsAkygI/lE=;
        b=Z+lQzdzaqUNctB7/f/qK0T7DwZPDlHTrRqCRrreZTxgRo59PMAe2fpMZ7aJ2yiIead
         unF7EcvGQM82cfbna1wsc2II9Txhn5eaBLXZsdQMdJJFBytXP8HxsUO7YK3obtUvgd0s
         A2BrGaFFgNtAA/ERJsmSwRyFgH60pRGzxmUYu5QOLU93kJdf5Qd14EtIQFuEQYIRtX8g
         5njo92PULPRcl9SKesg1o4OioFjDxoK+Y3zMDl6H5fmFzSbhN3cIafzfm0zqHl1uYGAr
         MbdVHRzOxHFJU4RRXjIMuLmWJAasGuq9mJRRhSRjg7Dk9BQbodNpacCqe1uvGvVcYpmD
         39ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3D5t8RB60swuDFBBQJ/jFMpdF4GAB5nk7vsAkygI/lE=;
        b=HnbCRThTs3I+OmVt1XKSim/NVJJh3/cMoVAi7MUwcbH+ZoMPS99dCPONJiBdBv0kgi
         Zi3q6EqLEp1LzRrVxWS5O1UJy20rpa+3TWvzih7HKdiCRJGxsaIVlG3jgx2EZ2KNXYTO
         RUNH94U5JOkzi8/SkcRp8UNMtoetT5YYWct6SEfq4rozKtCb5KapC1BPM/s15/R+Yi9B
         PuVgHs1FmQgPhtAdqZuNPXhGfZlVXFg5SqnTpGRWRh4pilhqhV1hUsjvaOsArpXIYiOr
         5Uow/5WM7qiMEbcyDufP6qFxmZaCkBY2+/50nZCFx2R84L1et04XJx6PaXy3fjwBw4aK
         8UMw==
X-Gm-Message-State: AOAM530lO3kViGhxBjKSxZCnnxlb+05W6rJ5y7gqmBixj/cz0YxviN7D
	wDo7Mno92ahsRlK12Pi5slS2tczeiYI06IHIFbqHBT/+H5I4kQ==
X-Google-Smtp-Source: ABdhPJx5IP2hSyAvpNo9Wo3Ozh4ZJbaRqnAB6l//MzRoN4rpD2KUtVrYkODkEw8UKVrGWoM19us+S+Bugqh7YQHgTa4=
X-Received: by 2002:a9d:38e:: with SMTP id f14mr11341470otf.337.1631563385389;
 Mon, 13 Sep 2021 13:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <ab0a8f479cc74e59a05b0d764c9cfee3@gtri.gatech.edu>
 <a2b2443a10404d1280c409b81b832274@gtri.gatech.edu> <d843f624eb3c4220bfdb1201a623f8eb@gtri.gatech.edu>
In-Reply-To: <d843f624eb3c4220bfdb1201a623f8eb@gtri.gatech.edu>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 13 Sep 2021 16:02:54 -0400
Message-ID: <CAB__hTSud6zU8AoAW5Yy9VgmwZ1zG-pBhEgn1bJcMoi55j222Q@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Message-ID-Hash: WYFDZOC6SD3GQTPGG4OBFVQS3XSAQ5MY
X-Message-ID-Hash: WYFDZOC6SD3GQTPGG4OBFVQS3XSAQ5MY
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYFDZOC6SD3GQTPGG4OBFVQS3XSAQ5MY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2033877575534591449=="

--===============2033877575534591449==
Content-Type: multipart/alternative; boundary="00000000000003fe3f05cbe5f42a"

--00000000000003fe3f05cbe5f42a
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,
I am mostly a novice at FPGA development, but I have created a few blocks
in rfnoc 4.0 with multiple registers and they seem to behave properly. One
thing I noticed in your original post below is that when you assign the
value REG_USER_DEFAULT2, you use "=" rather than "<=". It seems it should
be the latter.  I don't really know what issues, if any, this would cause.
Rob

On Mon, Sep 13, 2021 at 1:07 PM Hodges, Jeff via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I'm now convinced there is something majorly wrong with UHD4.0
> controlport.  Not only am I experiencing the issue I have described here
> but if I create an image with two write registers (0x0 and 0x4) it works,
> but if I create two write registers addresses of 0x4 and 0x8, it fails both
> read and write.
>
>
> Is anyone using this UHD4.0? I never had these problems with UHD3.15.  I'm
> building for the X310.
>
>
> I can try to debug with chipscope but that is a pain and would rather not
> do waste time if someone else has already identified the source of this
> problem.
>
>
> Thanks,
>
>
> Jeff
> ------------------------------
> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, September 13, 2021 11:48:06 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register
> problem
>
>
> I can read and write from register addr 0x0 but the default value read
> from peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value
> to.
>
>
> This only occurs on register addr 0x0.
>
>
> Jeff
>
>
> ------------------------------
> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Saturday, September 11, 2021 5:02 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] rfnoc 4.0 gain block tutorial --> register problem
>
>
> Following the gain block tutorial from GRCON20, when I read from the
> registers using gain_block->regs().peek32(0x0), the default value that is
> return is not the same as set during reset. The default value I read is
> always 0 even when my verilog sets it to some other value after rebuilding
> the image.
>
>
> Has anyone seen this behavior?
>
>
> Also i am having problems with other FPGA builds involving the registers
> to please tell me if something is wrong with rfnoc 4.0 controlport.
>
> All i've done is taken the default gain block and added another default
> value after reset:
>
>
>
>   localparam REG_USER_ADDR    = 0; // Address for example user register
>   localparam REG_USER_DEFAULT = 1; // Default value for user register
>   localparam REG_USER_DEFAULT2 = 2; //Default value for user register
> after reset
>
>   reg [31:0] reg_user = REG_USER_DEFAULT;
>
>   always @(posedge ctrlport_clk) begin
>     if (ctrlport_rst) begin
>       reg_user = REG_USER_DEFAULT2;
>     end else begin
>       // Default assignment
>       m_ctrlport_resp_ack <= 0;
>
>       // Read user register
>       if (m_ctrlport_req_rd) begin // Read request
>         case (m_ctrlport_req_addr)
>           REG_USER_ADDR: begin
>             m_ctrlport_resp_ack  <= 1;
>             m_ctrlport_resp_data <= reg_user;
>           end
>         endcase
>       end
>
>       // Write user register
>       if (m_ctrlport_req_wr) begin // Write requst
>         case (m_ctrlport_req_addr)
>           REG_USER_ADDR: begin
>             m_ctrlport_resp_ack <= 1;
>             reg_user            <= m_ctrlport_req_data[31:0];
>           end
>         endcase
>       end
>     end
>   end
>
>
> Jeff
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000003fe3f05cbe5f42a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jeff,<div>I am mostly a novice at FPGA=
 development, but I have created a few blocks in rfnoc 4.0 with multiple re=
gisters and they seem to behave properly. One thing I noticed in your origi=
nal post below is that when you assign the value=C2=A0REG_USER_DEFAULT2, yo=
u use &quot;=3D&quot; rather than &quot;&lt;=3D&quot;. It seems it should b=
e the latter.=C2=A0 I don&#39;t really know what issues, if any, this would=
 cause.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, Sep 13, 2021 at 1:07 PM Hodges, Jeff via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">




<div dir=3D"ltr">

<div id=3D"gmail-m_5548596774417990564divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p>I&#39;m now convinced there is something majorly wrong with UHD4.0 contr=
olport.=C2=A0 Not only am I experiencing the issue I have described here bu=
t if I create an image with two write registers (0x0 and 0x4) it works, but=
 if I create two write registers addresses
 of 0x4 and 0x8, it fails both read and write.</p>
<p><br>
Is anyone using this UHD4.0? I never had these problems with UHD3.15. =C2=
=A0<span>I&#39;m building for the X310.</span></p>
<p><br>
</p>
<p>I can try to debug with chipscope but that is a pain and would rather no=
t do waste time if someone else has already identified the source of this p=
roblem.<br>
</p>
<p><br>
</p>
<p>Thanks,<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_5548596774417990564divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Monday, September 13, 2021 11:48:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: rfnoc 4.0 gain block tutorial --&gt; regis=
ter problem</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_5548596774417990564divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif,EmojiFon=
t,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&=
quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols" dir=3D"l=
tr">
<p>I can read and write from register addr 0x0 but the default value read f=
rom peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value to=
.<br>
</p>
<p><br>
</p>
<p>This only occurs on register addr 0x0.<br>
</p>
<p><br>
</p>
<p>Jeff<br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_5548596774417990564divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Hodges, Jeff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Saturday, September 11, 2021 5:02 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] rfnoc 4.0 gain block tutorial --&gt; register =
problem</font>
<div>=C2=A0</div>
</div>
<div>
<div id=3D"gmail-m_5548596774417990564divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-se=
rif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Noto=
ColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbo=
ls">
<p>Following the gain block tutorial from GRCON20, when I read from the reg=
isters using gain_block-&gt;regs().peek32(0x0), the default value that is r=
eturn is not the same as set during reset. The default value I read is alwa=
ys 0 even when my verilog sets it to
 some other value after rebuilding the image.</p>
<p><br>
</p>
<p>Has anyone seen this behavior?<br>
</p>
<p><br>
</p>
<p>Also i am having problems with other FPGA builds involving the registers=
 to please tell me if something is wrong with rfnoc 4.0 controlport.<br>
<br>
All i&#39;ve done is taken the default gain block and added another default=
 value after reset:<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>=C2=A0 localparam REG_USER_ADDR=C2=A0=C2=A0=C2=A0 =3D 0; // Address fo=
r example user register<br>
=C2=A0 localparam REG_USER_DEFAULT =3D 1; // Default value for user registe=
r<br>
=C2=A0 localparam REG_USER_DEFAULT2 =3D 2; //Default value for user registe=
r after reset<br>
<br>
=C2=A0 reg [31:0] reg_user =3D REG_USER_DEFAULT;<br>
<br>
=C2=A0 always @(posedge ctrlport_clk) begin<br>
=C2=A0=C2=A0=C2=A0 if (ctrlport_rst) begin<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg_user =3D REG_USER_DEFAULT2;<br>
=C2=A0=C2=A0=C2=A0 end else begin<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Default assignment<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlport_resp_ack &lt;=3D 0;<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Read user register<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (m_ctrlport_req_rd) begin // Read request=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case (m_ctrlport_req_addr)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_USER_ADDR: begin=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlpo=
rt_resp_ack=C2=A0 &lt;=3D 1;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlpo=
rt_resp_data &lt;=3D reg_user;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 endcase<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Write user register<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (m_ctrlport_req_wr) begin // Write requst=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case (m_ctrlport_req_addr)<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_USER_ADDR: begin=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 m_ctrlpo=
rt_resp_ack &lt;=3D 1;<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reg_user=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;=3D =
m_ctrlport_req_data[31:0];<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 endcase<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0=C2=A0=C2=A0 end<br>
=C2=A0 end<br>
<br>
</div>
<br>
<p></p>
<p>Jeff<br>
</p>
</div>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000003fe3f05cbe5f42a--

--===============2033877575534591449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2033877575534591449==--
