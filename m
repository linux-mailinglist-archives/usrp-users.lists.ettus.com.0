Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 872F4416847
	for <lists+usrp-users@lfdr.de>; Fri, 24 Sep 2021 00:59:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 405B6384235
	for <lists+usrp-users@lfdr.de>; Thu, 23 Sep 2021 18:59:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="i8Pwiqj2";
	dkim-atps=neutral
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by mm2.emwd.com (Postfix) with ESMTPS id CD62E383DC4
	for <usrp-users@lists.ettus.com>; Thu, 23 Sep 2021 18:58:59 -0400 (EDT)
Received: by mail-oi1-f173.google.com with SMTP id t189so11942158oie.7
        for <usrp-users@lists.ettus.com>; Thu, 23 Sep 2021 15:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gWjGIceYfi5PvMAZP64jJyInUMuxijDS4DuPVVbQ33k=;
        b=i8Pwiqj27UI6Uk9zjBX8XvBdX6jiw1aM8tt6+Z9vBM1fwvbbEcRoNmWfgLJxiQ6bcJ
         bCXBLKzUeHfrKX5V7fhoR3xhhhSiWQYWaQATx6l8AMyfb3sknVseUU06MFPB0y6hETJH
         v5XfgnsjiNeHcQImZCm/TyjtvEHqUH85s5bexqQimrrPaxtpuzmPAPECTFMZBnICvk+7
         5PXzXBQE8qu6HJZEFYLfg0D0Us3j0+jLP5XfJQyv3Cl6OfdowNomJo8wjx/7xqnxXv6y
         rbdkyarzDOrDjmEFqUddLbVkSwG2ChCra6Uq/JqbRTFBMOO8od33ohqNZnRK4MrSMeP4
         Z0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gWjGIceYfi5PvMAZP64jJyInUMuxijDS4DuPVVbQ33k=;
        b=8CF76/9ZoaIOuNEFY12vd5kKGT82b6RcPBGTS6DZTtAIfzEnMRAEQAKV/RNMBBbPLj
         K/D7b2QFU0VHGjekDcW1aEPM6S/cowUNfBpvF8FfhPOZpIh0EIGLhVBylIgpHH4roHPs
         FPjRLrWUBSBTs+W8mglBmV7PKylG9SXgVSeHQiARvMxmBZtdzpmdySfjagTxHZb5iP4N
         1cYBkOQIZLBCy0JeHuVoQ1i57eiHUVVDVZ2lm2QxgcCrMegERVQAlE9sT+DWQrvtVxwY
         JWJ51w7oc0HQVBmyMb4N66Z1Z3DpkNVRJITGuUbiw7fLlbQPmeGuhGzJnhK0FiQ+JTCd
         wB0Q==
X-Gm-Message-State: AOAM533N27xSGnkboEBXk285kzs2dkp42tV4Pl1H4wggwzpdjlXk5jzL
	b3Wr3s/3b4X8Jln7GKS9CBW/AC3POlwSjXn/VuQdFPPYYOkCNA==
X-Google-Smtp-Source: ABdhPJwUEGJvWDkj/TNMCeXPO3yOw7sEE5T0oigHdStgES2wJZh1PiuzO1X+jd2vKEHljksZSBoWEy+3a/1LDHxaOxI=
X-Received: by 2002:aca:5c3:: with SMTP id 186mr14574565oif.145.1632437939145;
 Thu, 23 Sep 2021 15:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <ab0a8f479cc74e59a05b0d764c9cfee3@gtri.gatech.edu>
 <a2b2443a10404d1280c409b81b832274@gtri.gatech.edu> <d843f624eb3c4220bfdb1201a623f8eb@gtri.gatech.edu>
 <CAB__hTSud6zU8AoAW5Yy9VgmwZ1zG-pBhEgn1bJcMoi55j222Q@mail.gmail.com>
 <CAFche=gagSNoBjqEJ1WkOJf5jpCX8_uFYy8NkdE45vKJUgbP2g@mail.gmail.com>
 <f3a4ba5c635e466ba69f980c64fec937@gtri.gatech.edu> <a4aaf551b5354922b5a53ac2022ec446@gtri.gatech.edu>
In-Reply-To: <a4aaf551b5354922b5a53ac2022ec446@gtri.gatech.edu>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 23 Sep 2021 17:58:43 -0500
Message-ID: <CAFche=gugamhgN38gD5dHQPG5Ku4Jr0E0Xt7Tz62u55EMCorGQ@mail.gmail.com>
To: "Hodges, Jeff" <Jeff.Hodges@gtri.gatech.edu>
Message-ID-Hash: 3IB4H34J6UR3Q4AIU6GCHLMB5B7N5LHS
X-Message-ID-Hash: 3IB4H34J6UR3Q4AIU6GCHLMB5B7N5LHS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3IB4H34J6UR3Q4AIU6GCHLMB5B7N5LHS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3000384175046866685=="

--===============3000384175046866685==
Content-Type: multipart/alternative; boundary="0000000000007b220f05ccb19388"

--0000000000007b220f05ccb19388
Content-Type: text/plain; charset="UTF-8"

Something must be different between your code and the example. Did you
modify anything in the block's YAML and regenerate the noc_shell for your
block? Maybe something was changed in that process. Perhaps you could post
the code for your block (specifically the HDL and YAML)?

Wade

On Mon, Sep 20, 2021 at 4:21 PM Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>
wrote:

> The reset value being stuck at 0 may not be a significant issue but it is
> one of two issues I am having and the easiest to debug.
>
>
> The other issue is that if the addr 0 is not writeable, then the control
> port will not read/write from any of the registers. All of it simulates
> fine but after building and testing, I get ACK timeouts on the controlport
> bus.
>
>
>
> Jeff
>
>
>
> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, September 20, 2021 3:09 PM
> *To:* Wade Fife <wade.fife@ettus.com>; Rob Kossler <rkossler@nd.edu>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register
> problem
>
>
>
> Rob/Wade,
>
>
>
> Thank you for the feedback. I have been running the testbenches and they
> succeed but when I build the code the default value is still 0.
>
>
>
> I went back and copied the two files: rfnoc_block_gain.v and
> rfnoc_block_gain_tb.sv to the OOT module, replacing the gain code I had,
> and reran the testbench and rebuilt the image and the default value of
> register address 0x0 is still 0.
>
>
>
> Any thoughts on what else could be wrong?
>
>
>
> Jeff
>
>
>
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* Tuesday, September 14, 2021 3:25 PM
> *To:* Rob Kossler <rkossler@nd.edu>
> *Cc:* Hodges, Jeff <Jeff.Hodges@gtri.gatech.edu>;
> usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: rfnoc 4.0 gain block tutorial -->
> register problem
>
>
>
> Hi Jeff,
>
>
>
> I agree with Rob that "=" should be "<=" but I don't think that's causing
> any harm here. I copied and pasted your code into the gain example and
> tested it, and it seems to work as I expected. So there's probably
> something wrong that's unrelated to that code snippet. Take a look at the
> gain example to see what's different in yours. I would also suggest
> simulating your code rather than resorting to chipscope. You can use the
> example gain testbench as a starting point.
>
>
>
>
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v
>
>
> https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv
>
>
>
> The reset should be asserted when the graph is first initialized, so you
> should not be able to read the initial value of the register
> (REG_USER_DEFAULT), only the reset value (REG_USER_DEFAULT2). If that reset
> isn't happening then perhaps there's something wrong with the reset
> connection or the clock connection. Also, it's usually good practice to
> make the reset and initial value the same. Some FPGAs don't really support
> them being different, although I think this is supported on Xilinx 7 Series.
>
>
>
> Thanks,
>
>
>
> Wade
>
>
>
> On Mon, Sep 13, 2021 at 3:03 PM Rob Kossler <rkossler@nd.edu> wrote:
>
> Hi Jeff,
>
> I am mostly a novice at FPGA development, but I have created a few blocks
> in rfnoc 4.0 with multiple registers and they seem to behave properly. One
> thing I noticed in your original post below is that when you assign the
> value REG_USER_DEFAULT2, you use "=" rather than "<=". It seems it should
> be the latter.  I don't really know what issues, if any, this would cause.
>
> Rob
>
>
>
> On Mon, Sep 13, 2021 at 1:07 PM Hodges, Jeff via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
>
> I can try to debug with chipscope but that is a pain and would rather not
> do waste time if someone else has already identified the source of this
> problem.
>
>
>
> Thanks,
>
>
>
> Jeff
> ------------------------------
>
> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, September 13, 2021 11:48:06 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: rfnoc 4.0 gain block tutorial --> register
> problem
>
>
>
> I can read and write from register addr 0x0 but the default value read
> from peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value
> to.
>
>
>
> This only occurs on register addr 0x0.
>
>
>
> Jeff
>
>
> ------------------------------
>
> *From:* Hodges, Jeff via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Saturday, September 11, 2021 5:02 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] rfnoc 4.0 gain block tutorial --> register problem
>
>
>
> Following the gain block tutorial from GRCON20, when I read from the
> registers using gain_block->regs().peek32(0x0), the default value that is
> return is not the same as set during reset. The default value I read is
> always 0 even when my verilog sets it to some other value after rebuilding
> the image.
>
>
>
> Has anyone seen this behavior?
>
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
>
> Jeff
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000007b220f05ccb19388
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Something must be different between your code and the=
 example. Did you modify anything in the block&#39;s YAML and regenerate th=
e noc_shell for your block? Maybe something was changed in that process. Pe=
rhaps you could post the code for your block (specifically the HDL and YAML=
)?</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 20, 2021 at 4:21 PM H=
odges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu">Jeff.Hodges@=
gtri.gatech.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_4197434844044029762WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">The reset value being stuck at 0=
 may not be a significant issue but it is one of two issues I am having and=
 the easiest to debug.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><br>
The other issue is that if the addr 0 is not writeable, then the control po=
rt will not read/write from any of the registers. All of it simulates fine =
but after building and testing, I get ACK timeouts on the controlport bus.<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Hodges, Jeff via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt;
<br>
<b>Sent:</b> Monday, September 20, 2021 3:09 PM<br>
<b>To:</b> Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_=
blank">wade.fife@ettus.com</a>&gt;; Rob Kossler &lt;<a href=3D"mailto:rkoss=
ler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: rfnoc 4.0 gain block tutorial --&gt; regis=
ter problem<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Rob/Wade,<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Thank you for the feedback. I ha=
ve been running the testbenches and they succeed but when I build the code =
the default value is still 0.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">I went back and copied the two f=
iles: rfnoc_block_gain.v and <a href=3D"http://rfnoc_block_gain_tb.sv" targ=
et=3D"_blank">rfnoc_block_gain_tb.sv</a> to the OOT module, replacing the g=
ain code I had, and reran the testbench
 and rebuilt the image and the default value of register address 0x0 is sti=
ll 0. <u></u>
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Any thoughts on what else could =
be wrong?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)">Jeff<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif"> Wade Fife &lt;<a href=3D"mailto:wa=
de.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt;
<br>
<b>Sent:</b> Tuesday, September 14, 2021 3:25 PM<br>
<b>To:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;<br>
<b>Cc:</b> Hodges, Jeff &lt;<a href=3D"mailto:Jeff.Hodges@gtri.gatech.edu" =
target=3D"_blank">Jeff.Hodges@gtri.gatech.edu</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Re: rfnoc 4.0 gain block tutorial --&gt; r=
egister problem<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Jeff,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I agree with Rob that &quot;=3D&quot; should be &quo=
t;&lt;=3D&quot; but I don&#39;t think that&#39;s causing any harm here. I c=
opied and pasted your code into the gain example and tested it, and it seem=
s to work as I expected. So there&#39;s probably something wrong that&#39;s=
 unrelated
 to that code snippet. Take a look at the gain example to see what&#39;s di=
fferent in yours. I would also suggest simulating your code rather than res=
orting to chipscope. You can use the example gain testbench as a starting p=
oint.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/blob=
/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.=
v" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/host/=
examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v</a><u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://github.com/EttusResearch/uhd/blob=
/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_=
tb.sv" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/h=
ost/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv</a>=
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The reset should be asserted when the graph is first=
 initialized, so you should not be able to read the initial value of the re=
gister (REG_USER_DEFAULT), only the reset value (REG_USER_DEFAULT2). If tha=
t reset isn&#39;t happening then perhaps
 there&#39;s something wrong with the reset connection or the clock connect=
ion. Also, it&#39;s usually good practice to make the reset and initial val=
ue the same. Some FPGAs don&#39;t really support them being different, alth=
ough I think this is supported on Xilinx 7 Series.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Sep 13, 2021 at 3:03 PM Rob Kossler &lt;<a h=
ref=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wr=
ote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">Hi Jeff,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">I am mostly a novice at FPGA development, but I have=
 created a few blocks in rfnoc 4.0 with multiple registers and they seem to=
 behave properly. One thing I noticed in your original post below is that w=
hen you assign the value=C2=A0REG_USER_DEFAULT2,
 you use &quot;=3D&quot; rather than &quot;&lt;=3D&quot;. It seems it shoul=
d be the latter.=C2=A0 I don&#39;t really know what issues, if any, this wo=
uld cause.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Sep 13, 2021 at 1:07 PM Hodges, Jeff via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin:5pt 0in 5pt 4.8pt">
<div>
<div id=3D"gmail-m_4197434844044029762gmail-m_-332466019450191388gmail-m_55=
48596774417990564divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
&#39;m now convinced there is something majorly wrong with UHD4.0 controlpo=
rt.=C2=A0 Not only am I experiencing the issue I have described here but if=
 I create an image with two write registers (0x0 and
 0x4) it works, but if I create two write registers addresses of 0x4 and 0x=
8, it fails both read and write.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
br>
Is anyone using this UHD4.0? I never had these problems with UHD3.15.=C2=A0=
 I&#39;m building for the X310.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
 can try to debug with chipscope but that is a pain and would rather not do=
 waste time if someone else has already identified the source of this probl=
em.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
hanks,<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">J=
eff<u></u><u></u></span></p>
</div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center">
<hr width=3D"98%" size=3D"5" align=3D"center">
</div>
<div id=3D"gmail-m_4197434844044029762gmail-m_-332466019450191388gmail-m_55=
48596774417990564divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-si=
ze:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Hodges, Je=
ff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Monday, September 13, 2021 11:48:06 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: rfnoc 4.0 gain block tutorial --&gt; regis=
ter problem</span>
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<div>
<div id=3D"gmail-m_4197434844044029762gmail-m_-332466019450191388gmail-m_55=
48596774417990564divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">I=
 can read and write from register addr 0x0 but the default value read from =
peek32(0x0) is 0 regardless of what I set the REG_USER_DEFAULT value to.<u>=
</u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">T=
his only occurs on register addr 0x0.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">J=
eff<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,sans-serif;color:black"><u></u>=C2=A0<u></u></span>=
</p>
<div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">
<hr width=3D"98%" size=3D"5" align=3D"center">
</span></div>
<div id=3D"gmail-m_4197434844044029762gmail-m_-332466019450191388gmail-m_55=
48596774417990564divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-si=
ze:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Hodges, Je=
ff via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Saturday, September 11, 2021 5:02 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] rfnoc 4.0 gain block tutorial --&gt; register =
problem</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;col=
or:black">
<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">=C2=A0<u></u><u></u></span></p>
</div>
</div>
<div>
<div id=3D"gmail-m_4197434844044029762gmail-m_-332466019450191388gmail-m_55=
48596774417990564divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">F=
ollowing the gain block tutorial from GRCON20, when I read from the registe=
rs using gain_block-&gt;regs().peek32(0x0), the default value that is retur=
n is not the same as set during reset. The default
 value I read is always 0 even when my verilog sets it to some other value =
after rebuilding the image.<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">H=
as anyone seen this behavior?<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">A=
lso i am having problems with other FPGA builds involving the registers to =
please tell me if something is wrong with rfnoc 4.0 controlport.<br>
<br>
All i&#39;ve done is taken the default gain block and added another default=
 value after reset:<u></u><u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black"><=
u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,sans-serif;color:black">=C2=A0 localparam REG_USER_=
ADDR=C2=A0=C2=A0=C2=A0 =3D 0; // Address for example user register<br>
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
=C2=A0 end<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">J=
eff<u></u><u></u></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000007b220f05ccb19388--

--===============3000384175046866685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3000384175046866685==--
