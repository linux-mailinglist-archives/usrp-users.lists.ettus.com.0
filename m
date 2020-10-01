Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0109C280128
	for <lists+usrp-users@lfdr.de>; Thu,  1 Oct 2020 16:20:14 +0200 (CEST)
Received: from [::1] (port=57984 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNzRL-0002qg-1M; Thu, 01 Oct 2020 10:20:11 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:38021)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kNzRH-0002jU-Ui
 for usrp-users@lists.ettus.com; Thu, 01 Oct 2020 10:20:07 -0400
Received: by mail-ot1-f42.google.com with SMTP id y5so5543493otg.5
 for <usrp-users@lists.ettus.com>; Thu, 01 Oct 2020 07:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0t07WQ1h388el32UDEBk5p9FPeF50uoSzoao9VpJmbk=;
 b=b2kJye7IG2jddjSz85USc+0Jq+71BLmL/zZI7xcj1a3HBhaz8PP3XVPRZGs+tin4rK
 vZ5F+j2eS9mqX74vndSSIYUGNMFU08G8hCnz1+vtu17JSj+NRVNpupKayBED9Cg8pX9n
 BLXH0nNLsa+wHRuAdmUNVCA2n5nmHZjhzIQ1sFhMTLGE9m7sdt7SMlSnbUwek7iI84eY
 sO+nfyL8H3tFcniNAPJOAQf01zrAfZlt/2fBmHxIUTEPvFlCg2crn7WXdIAXIZIhkGFG
 OxWpRB4KpJ+GGfZ3CUlu4LuWTBZMSZAksvj7tPzI1NsLLbIK+MZVxQRTiMFebaPa+Q5O
 tY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0t07WQ1h388el32UDEBk5p9FPeF50uoSzoao9VpJmbk=;
 b=CtWaYQVRArUDYCpL8qhjmOS08ejIwuzW+B5vFidMEkhCkK88fd33DWqr0r0F7tVkmQ
 fsU4ueCuqvMpoPa/7Gk6InE9VT6fbtde+4i/CeM2yfaP/pOg+fTOc0YEUBgdoBIdVOuO
 gF8RxKs052ePe9+YL8X4Fx9Qg3mDLa4u0VijBOITA//xhKC8MKi6jF+VsPt2haotyIKs
 dLI8RWET4j6GDYRTayM5PA/QnJX9Vn2zhj0/4FQTiMrQSHb4zlchJbss5N7v0gDSlFvx
 sK3anzIVIjhTqgf/kvpe/ouyWTmw61XVNLIUqoadn1X9j8rR2xK81tKQndhRbNVd6kfN
 HeMg==
X-Gm-Message-State: AOAM530+RzfK34t3lQdZRtnbN5ZPmTlETm8M+zopvZcGbVlfXTKiKnjE
 AsltyrDNGBY0/k08/4+GX0uHVacbvNNAFxE4hQ7Vx3395z0=
X-Google-Smtp-Source: ABdhPJxM2mFf/r0SM4d4KkPlsFq1bndLFH0BT+K+w1fQ2Dt5dv/gPEfY9JtXiEmR6VhmKJ9FMHOtD0TWRXsUVzS1rJ0=
X-Received: by 2002:a9d:6219:: with SMTP id g25mr5125809otj.58.1601561967003; 
 Thu, 01 Oct 2020 07:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB3312CE95DBC33D5A21D8F294B8330@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312CE95DBC33D5A21D8F294B8330@MN2PR12MB3312.namprd12.prod.outlook.com>
Date: Thu, 1 Oct 2020 10:19:16 -0400
Message-ID: <CAB__hTT2mvSMDfcg17zM04JFn3qAE02qYvbZwJGt2bpvSbr2_g@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Trouble getting custom RFNoC block to work with
 gnuradio 3.8 / uhd 4.0
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
Content-Type: multipart/mixed; boundary="===============1312958044148002355=="
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

--===============1312958044148002355==
Content-Type: multipart/alternative; boundary="0000000000002146c505b09cb4cc"

--0000000000002146c505b09cb4cc
Content-Type: text/plain; charset="UTF-8"

Hi Jim,
I have also been playing around with UHD-4.0, but mostly in testbenches.
I've only built one image (for the N310) with one of my custom blocks. The
errors you mentioned seem very strange. A few questions/comments:
- can you send your "XXX_x310_rfnoc_image_core.yml" contents?
- would it be helpful to run directly with UHD examples (removing gnuradio
and gr-ettus from the equation)?  You could try "rfnoc_rx_to_file" as-is
where you specify on the command line the desired "block-id" to insert
between the Radio and the rx_streamer.  With the X310, the Radio rate might
be too high with your custom "thru" block so perhaps you could modify the
example (in-tree would be easiest) to automatically include the DDC and
then insert the command line "block-id" optionally after the DDC.
- In my testbenches, I have occasionally seend CHDR error messages like you
mentioned and it seemed to solve them if I set "s_out_payload_tkeep=1". I
didn't think this was needed if there was only 1 output port, but I seem to
recall that this fixed my CHDR error issue for my 1  port block.
Rob

On Wed, Sep 30, 2020 at 10:39 AM Jim Palladino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> Several weeks ago I went through the tutorial for producing the example
> "gain" block using rfnoc 3.8 and uhd 3.15. There were some bumps, but I did
> get that working fine. For the past couple weeks, I've been working with
> UHD 4.0 and the latest gr-ettus repo.
>
> I posted a question a week or two ago since I couldn't get UHD to
> recognize my custom block, as UHD doesn't look for the block yml file in
> the latest uhd 4.0 build. It just shows up as "0/Block#0" when probing.
> Thanks to Wade F. for the quick response to that question and for
> suggesting I either just continue OOT and use the "Block" name to interface
> with it or build in-tree for now. I chose to stick with OOT and just use
> the "Block" naming.
>
> I started with the gain example, but ended up simplifying it to literally
> just using what was generated by rfnocmodtool (just a pass through block in
> the FPGA) with no modifications. I made an rfnoc block, called "Block". I
> built this for an E320, so I did have to modify the
> "XXX_x310_rfnoc_image_core.yml" file accordingly.
>
> I built/installed everything, but this is what is happening. When I create
> a gnuradio-companion "waveform", it does run, but I get the following
> behavior:
>
> 1) If my setup is RFNoC_RX_Radio -> RFNoC_DDC_Block -> RFNoC_Block ->
> RFNoC_RX_Streamer -> QT_GUI_Freq_Sink:
>
> Everything runs, but the following repeats over and over and the output
> plot doesn't change:
> ----
> gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
> ERROR_CODE_BAD_PACKET (Code: 0xf)
> [ERROR] [STREAMER] The receive transport caught a value exception.
> ValueError: Bad CHDR header or invalid packet length.
> gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error
> ERROR_CODE_BAD_PACKET (Code: 0xf)
> [ERROR] [STREAMER] The receive transport caught a value exception.
> ValueError: Bad CHDR header or invalid packet length.
> ----
>
> I put in some ILA probes and it seems that "ep4_to_xb_tready" is stuck
> low. ep4 is the endpoint tied to the in and out of my custom "Block." I'm
> guessing it didn't start low but a FIFO or something filled up somewhere.
>
> I should mention that if I use this same setup, but remove my custom
> RFNoC_Block and directly connect the DDC to the RX_Streamer, everything
> works fine. No errors, the spectrum looks fine, etc.
>
>
> 2) If my setup is Constant_Source(set to 4+9j) -> RFNoC_TX_Streamer ->
> RFNoC_Block -> RFNoC_RX_Streamer -> QT_GUI_Time_Sink:
>
> Everything runs and I do not have a problem with any gnuradio warnings.
> Also, TReady is high the entire time. But, the output plot for I and Q sit
> mostly constant stuck at "1", with non-periodic blips down to "0". I'm not
> seeing the complex constant I set in gnuradio. If I look at the
> payload_tdata in an ILA for my "Block" when tvalid is high and tready is
> high, I see that the data is sitting at 0x7fff7fff except when TLAST is
> high, tdata switches to 0xfffc7ff7.
>
> I'm at a bit of a loss trying to figure out what is happening. Could it be
> that UHD is not interfacing properly to my block (given that UHD doesn't
> look for my OOT yml file)? I did not change any block controller code or
> anything else. Oh, and the user_register that is included as part of the
> default design designated by rfnocmodtool seems to work fine. I can change
> the register value in gnuradio and I can see it change appropriately via
> and ILA.
>
> For reference, this is what I've been working with:
> 1) UHD (v4.0.0.0 tag)
> 2) gnuradio (3.8.2.0 tag)
> 3) gr-ettus (maint-3.8-uhd4.0 branch)
>
> RFNoC is new to me, so any thoughts on what could be wrong or how I could
> go about debugging this would be greatly appreciated. Hopefully, I'm just
> missing something simple.
>
> Thanks,
> Jim
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002146c505b09cb4cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jim,<div>I have also been playing arou=
nd with UHD-4.0, but mostly in testbenches. I&#39;ve only built one image (=
for the N310) with one of my custom blocks. The errors you mentioned seem v=
ery strange. A few questions/comments:</div><div>- can you send your &quot;=
XXX_x310_rfnoc_image_core.yml&quot; contents?</div><div>- would it be helpf=
ul=C2=A0to run directly with UHD examples (removing gnuradio and gr-ettus f=
rom the equation)?=C2=A0 You could try &quot;rfnoc_rx_to_file&quot; as-is w=
here you specify on the command line the desired &quot;block-id&quot; to in=
sert between the Radio and the rx_streamer.=C2=A0 With the X310, the Radio =
rate might be too high with your custom &quot;thru&quot; block so perhaps y=
ou could modify the example (in-tree would be easiest) to automatically inc=
lude the DDC and then insert the command line &quot;block-id&quot; optional=
ly after the DDC.</div><div>- In my testbenches, I have occasionally seend =
CHDR error messages like you mentioned and it seemed to solve them if I set=
 &quot;s_out_payload_tkeep=3D1&quot;. I didn&#39;t think this was needed if=
 there was only 1 output port, but I seem to recall that this fixed my CHDR=
 error issue for my 1=C2=A0 port block.</div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 30, =
2020 at 10:39 AM Jim Palladino via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Several weeks ago I went through the tutorial for producing the example &qu=
ot;gain&quot; block using rfnoc 3.8 and uhd 3.15. There were some bumps, bu=
t I did get that working fine. For the past couple weeks, I&#39;ve been wor=
king with UHD 4.0 and the latest gr-ettus repo.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I posted a question a week or two ago since I couldn&#39;t get UHD to recog=
nize my custom block, as UHD doesn&#39;t look for the block yml file in the=
 latest uhd 4.0 build. It just shows up as &quot;0/Block#0&quot; when probi=
ng. Thanks to Wade F. for the quick response to that
 question and for suggesting I either just continue OOT and use the &quot;B=
lock&quot; name to interface with it or build in-tree for now. I chose to s=
tick with OOT and just use the &quot;Block&quot; naming.=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I started with the gain example, but ended up simplifying it to literally j=
ust using what was generated by rfnocmodtool (just a pass through block in =
the FPGA) with no modifications. I made an rfnoc block, called &quot;Block&=
quot;. I built this for an E320, so I did
 have to modify the &quot;XXX_x310_rfnoc_image_core.yml&quot; file accordin=
gly.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I built/installed everything, but this is what is happening. When I create =
a gnuradio-companion &quot;waveform&quot;, it does run, but I get the follo=
wing behavior:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
1) If my setup is RFNoC_RX_Radio -&gt; RFNoC_DDC_Block -&gt; RFNoC_Block -&=
gt; RFNoC_RX_Streamer -&gt; QT_GUI_Freq_Sink:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Everything runs, but the following repeats over and over and the output plo=
t doesn&#39;t change:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
----</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received error ERR=
OR_CODE_BAD_PACKET (Code: 0xf)
<div>[ERROR] [STREAMER] The receive transport caught a value exception.<br>
</div>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
<div>gr::log :WARN: rfnoc_rx_streamer0 - RFNoC Streamer block received erro=
r ERROR_CODE_BAD_PACKET (Code: 0xf)</div>
<div>[ERROR] [STREAMER] The receive transport caught a value exception.</di=
v>
<div>ValueError: Bad CHDR header or invalid packet length.</div>
----<br>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I put in some ILA probes and it seems that &quot;ep4_to_xb_tready&quot; is =
stuck low. ep4 is the endpoint tied to the in and out of my custom &quot;Bl=
ock.&quot; I&#39;m guessing it didn&#39;t start low but a FIFO or something=
 filled up somewhere.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I should mention that if I use this same setup, but remove my custom RFNoC_=
Block and directly connect the DDC to the RX_Streamer, everything works fin=
e. No errors, the spectrum looks fine, etc.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
2) If my setup is Constant_Source(set to 4+9j) -&gt; RFNoC_TX_Streamer -&gt=
; RFNoC_Block -&gt; RFNoC_RX_Streamer -&gt; QT_GUI_Time_Sink:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Everything runs and I do not have a problem with any gnuradio warnings. Als=
o, TReady is high the entire time. But, the output plot for I and Q sit mos=
tly constant stuck at &quot;1&quot;, with non-periodic blips down to &quot;=
0&quot;. I&#39;m not seeing the complex constant I set in
 gnuradio. If I look at the payload_tdata in an ILA for my &quot;Block&quot=
; when tvalid is high and tready is high, I see that the data is sitting at=
 0x7fff7fff except when TLAST is high, tdata switches to 0xfffc7ff7.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m at a bit of a loss trying to figure out what is happening. Could it=
 be that UHD is not interfacing properly to my block (given that UHD doesn&=
#39;t look for my OOT yml file)? I did not change any block controller code=
 or anything else. Oh, and the user_register
 that is included as part of the default design designated by rfnocmodtool =
seems to work fine. I can change the register value in gnuradio and I can s=
ee it change appropriately via and ILA.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
For reference, this is what I&#39;ve been working with:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
1) UHD (v4.0.0.0 tag)</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
2) gnuradio (3.8.2.0 tag)</div>
<div style=3D"margin:0px;font-size:12pt;font-family:Calibri,Arial,Helvetica=
,sans-serif;color:black;background-color:rgb(255,255,255)">
3) gr-ettus (maint-3.8-uhd4.0 branch)</div>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
RFNoC is new to me, so any thoughts on what could be wrong or how I could g=
o about debugging this would be greatly appreciated. Hopefully, I&#39;m jus=
t missing something simple.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002146c505b09cb4cc--


--===============1312958044148002355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1312958044148002355==--

