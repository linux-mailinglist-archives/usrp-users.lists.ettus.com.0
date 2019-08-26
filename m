Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F82E9C6CB
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2019 02:21:05 +0200 (CEST)
Received: from [::1] (port=49718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i22kp-0000CG-7C; Sun, 25 Aug 2019 20:21:03 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:39210)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i22kl-00007m-Jb
 for usrp-users@lists.ettus.com; Sun, 25 Aug 2019 20:20:59 -0400
Received: by mail-ot1-f48.google.com with SMTP id b1so13621658otp.6
 for <usrp-users@lists.ettus.com>; Sun, 25 Aug 2019 17:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=EpG9Yp7XMyyXtoncwBcRpd3M5claBagv+qQ1ETdG3ZE=;
 b=VjIW2LeH4fWpr+YGg91VFYsRFRwAxBRkqHPKrRu0mZNELt5SbIdBOYpGM/8U83B8S0
 d87ySBZ3n4I3B0iuFLFBEPKqS9SacPDQp8MMeB+csSlr1OMsPKGdWSVZ9OXs+e3Z5f6q
 y5buV2bgqu4q6Ydwn9hQvViriEdWYP8t/RFMAoA6Q8KO8YdJ7Wu3MozVAojCqfsUYTRo
 N8AYD4X5+fFboU2Fb66llxFhg543QywALduejmWy2iPB5I8fwlzL1NfKVGpbG7hBb3rK
 yYfkNGIVVhgMnFd7KsZJjm2h6NGp17n7bvaxj1HLISD9mQS70AOesD/jg688zoXakas+
 nPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EpG9Yp7XMyyXtoncwBcRpd3M5claBagv+qQ1ETdG3ZE=;
 b=m+A5tIt2/7Y/I0VOsiun4e0BZfedKFk9maNE5MCEvk6mC/Hxy41dkd3tqyrVK1vLfB
 85XIYPkVrUnfGandPyXIHGVVwlKrfvzup6INTQGE+EUuWdczkK+WbLr4haRNjYlWJwjP
 Bvt7YM4HnoB9ZydlgzFRPyDL4byWKEY81ammF3D6nRPYN22NpecBWFKBgiTK5ZJkhhc6
 BFJ8wXIfWRxd5DJJ0GdHy3mCw1xDos3Y8wR317rZLR1+h450oHm1OxvZ5GrZG3Q3jedB
 S8jvnQjURvMTkA7hOCWoFGPYcouWArKNDe+mPGAUgMFJllXyUmGJmFYecIQxvMCo9xVQ
 wdLA==
X-Gm-Message-State: APjAAAX1Mc5ybt0096fFrNHL/PcULnIk0VYzz69sXeMCl1aICcDoMp3g
 Zk3M6P+q/E8hr4nGNrtkdIOtiya9xbDzztchgKmi0XyC7Tw=
X-Google-Smtp-Source: APXvYqx7Z0UyfFaPhcZtTS3prnvaT9/ypWhJ4scoCl0uIzTQ0XnF5ydc/8nn+2yuoZN0MnGYDNWM6SCfsf7zek5IBSc=
X-Received: by 2002:a9d:d27:: with SMTP id 36mr13459049oti.327.1566778818326; 
 Sun, 25 Aug 2019 17:20:18 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 25 Aug 2019 20:20:07 -0400
Message-ID: <CAB__hTTZAGZOu0GJQJ04=QmzFrdrb5YpfT9hyB54U1dre+jNaQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Custom RFNoC block handling of packet header
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============6695998087649398042=="
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

--===============6695998087649398042==
Content-Type: multipart/alternative; boundary="000000000000e8a0080590fa1e66"

--000000000000e8a0080590fa1e66
Content-Type: text/plain; charset="UTF-8"

Hi,
I have a custom RFNoC block that is working with the exception that the
sample timing isn't quite right. I'm not getting a consistent group delay
from run to run even though I'm using timed starts for both tx and rx
streaming.  (I'm using my own C++ app and calling UHD 3.14.1.0 directly for
an N310 device).

The following graph (using stock blocks) produces a consistent group delay
(from host_tx to host_rx):
  host_tx -> DUC -> Radio_0 -> DDC -> host_rx
The following graph (adding MyBlock) produces a seemingly random group
delay (as if the transmitter Radio is no longer respecting the time stamp):
  host_tx -> MyBlock -> DUC -> Radio_0 -> DDC -> host_rx
With either of these graphs, I'm basically measuring the Tx/Rx leakage
signal.

Please let me know if you have any ideas why the graph with MyBlock does
not seem to be handling the packet header correctly.  Or, perhaps it's not
the packet header, but something else that could be causing this??  Here
are a few remarks:

   - MyBlock is similar in function to the "replay" block.  Myblock stores
   up one burst of incoming samples and then continuously plays this burst
   repeatedly until told to stop.
   - In MyBlock, I am storing the tuser data of the first incoming packet
   to use as the first outgoing packet tuser data.  After that, the subsequent
   outgoing packets do not include any timestamp (has_timestamp bit set to
   zero).
   - I have created a reasonably detailed test bench which seems to work as
   expected such that the data streams as expected and the first packet header
   matches the packet header that I send to it
   - I have run an RFNoC graph with only MyBlock and it looks to me like
   the timestamp info is forwarded as expected
   - In the second graph above (the one that doesn't work), I am able to
   produce "Late" errors ('L' on terminal) if I purposely use a start time in
   the past. So, I know that in some way the time stamp is getting through.
   - I am using the default block controller for MyBlock (in UHD)

Below is the Verilog related to the tuser data.  Thanks for any help.
Rob

  // this reg stores the incoming tuser so that the it can
  // be sent with the first outgoing tuser
  reg [127:0] in_tuser;

  // these keep track of when the first output packet is
  // sent so that only the first one contains a replica
  // of the incoming tuser timestamp and the rest of the
  // outgoing packets have 'has_time' set to zero.
  reg first_pkt_sent;
  wire modify_time = first_pkt_sent ? 1'b1:1'b0;

  // the following creates the output tuser based on the
  // previously stored input tuser.  In addition to
  // handling the time stamp, this block also fixes the
  // SIDs and eob appropriately
  cvita_hdr_modify #() hdr_modify
    (.header_in(in_tuser),
     .header_out(samp_out_tuser),
     .use_pkt_type(1'b0),  .pkt_type(2'b0),
     .use_has_time(modify_time),  .has_time(1'b0),
     .use_eob(1'b1),       .eob(eob_out),
     .use_seqnum(1'b0),    .seqnum(12'b0),
     .use_length(1'b0),    .length(16'b0),
     .use_payload_length(1'b0), .payload_length(16'd1024),
     .use_src_sid(1'b1),   .src_sid(src_sid),
     .use_dst_sid(1'b1),   .dst_sid(next_dst_sid),
     .use_vita_time(1'b0), .vita_time(64'b0));

  // Store the input tuser but only if its the first packet
  reg first_pkt_received;
  always @(posedge ce_clk) begin
    case(state)
      RESET:
        begin
          in_tuser <= 128'b0;
          first_pkt_received = 1'b0;
        end
      STORING:
        if (~first_pkt_received) begin
          if (samp_in_received & samp_in_tlast) begin
            in_tuser <= samp_in_tuser;
            first_pkt_received <= 1'b1;
          end
        end
    endcase
  end

  // Keep track of the first output packet so that once it is sent
  // we can remove the time stamp from subsequent output packets
  always @(posedge ce_clk) begin
    case(state)
      RESET: first_pkt_sent <= 1'b0;
      STREAMING,FLUSHING :
        if (~first_pkt_sent) begin
          if (samp_out_sent & samp_out_tlast) begin
            first_pkt_sent <= 1'b1;
          end
        end
    endcase
  end

--000000000000e8a0080590fa1e66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I have a custom RFNoC block that is working with t=
he exception that the sample timing isn&#39;t quite right. I&#39;m not gett=
ing a consistent group delay from run to run even though I&#39;m using time=
d starts for both tx and rx streaming.=C2=A0 (I&#39;m using my own C++ app =
and calling UHD 3.14.1.0 directly for an N310 device).</div><div><br></div>=
<div>The following graph (using stock blocks) produces a consistent group d=
elay (from host_tx to host_rx):</div><div><font face=3D"monospace">=C2=A0 h=
ost_tx -&gt; DUC -&gt; Radio_0 -&gt; DDC -&gt; host_rx</font></div><div>The=
 following graph (adding MyBlock) produces a seemingly random group delay (=
as if the transmitter Radio is no longer respecting the time stamp):</div><=
div><font face=3D"monospace">=C2=A0 host_tx -&gt; MyBlock -&gt; DUC -&gt; R=
adio_0 -&gt;</font><span style=3D"font-family:monospace">=C2=A0DDC -&gt; ho=
st_rx</span></div><div>With either of these graphs, I&#39;m basically measu=
ring the Tx/Rx leakage signal.=C2=A0=C2=A0<br></div><div><br></div><div>Ple=
ase let me know if you have any ideas why the graph with MyBlock does not s=
eem to be handling the packet header correctly.=C2=A0 Or, perhaps it&#39;s =
not the packet header, but something else that could be causing this??=C2=
=A0 Here are a few remarks:</div><div><ul><li>MyBlock is similar in functio=
n to the &quot;replay&quot; block.=C2=A0 Myblock stores up one burst of inc=
oming samples and then continuously plays this burst repeatedly until told =
to stop.</li><li>In MyBlock, I am storing the tuser data of the first incom=
ing packet to use as the first outgoing packet tuser data.=C2=A0 After that=
, the subsequent outgoing packets do not include any timestamp (has_timesta=
mp bit set to zero).</li><li>I have created a reasonably detailed test benc=
h which seems to work as expected such that the data streams as expected an=
d the first packet header matches the packet header that I send to it</li><=
li>I have run an RFNoC graph with only MyBlock and it looks to me like the =
timestamp info is forwarded as expected</li><li>In the second graph above (=
the one that doesn&#39;t work), I am able to produce &quot;Late&quot; error=
s (&#39;L&#39; on terminal) if I purposely use a start time in the past. So=
, I know that in some way the time stamp is getting through.</li><li>I am u=
sing the default block controller for MyBlock (in UHD)</li></ul><div>Below =
is the Verilog related to the tuser data.=C2=A0 Thanks for any help.</div><=
div>Rob</div><div><font face=3D"monospace">=C2=A0=C2=A0</font></div><div><f=
ont face=3D"monospace">=C2=A0 // this reg stores the incoming tuser so that=
 the it can<br>=C2=A0 // be sent with the first outgoing tuser<br>=C2=A0 re=
g [127:0] in_tuser;<br><br>=C2=A0 // these keep track of when the first out=
put packet is <br>=C2=A0 // sent so that only the first one contains a repl=
ica<br>=C2=A0 // of the incoming tuser timestamp and the rest of the<br>=C2=
=A0 // outgoing packets have &#39;has_time&#39; set to zero.<br>=C2=A0 reg =
first_pkt_sent;<br>=C2=A0 wire modify_time =3D first_pkt_sent ? 1&#39;b1:1&=
#39;b0;<br><br>=C2=A0 // the following creates the output tuser based on th=
e<br>=C2=A0 // previously stored input tuser.=C2=A0 In addition to <br>=C2=
=A0 // handling the time stamp, this block also fixes the <br>=C2=A0 // SID=
s and eob appropriately<br>=C2=A0 cvita_hdr_modify #() hdr_modify<br>=C2=A0=
 =C2=A0 (.header_in(in_tuser),<br>=C2=A0 =C2=A0 =C2=A0.header_out(samp_out_=
tuser),<br>=C2=A0 =C2=A0 =C2=A0.use_pkt_type(1&#39;b0), =C2=A0.pkt_type(2&#=
39;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_has_time(modify_time), =C2=A0.has_time(=
1&#39;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_eob(1&#39;b1), =C2=A0 =C2=A0 =C2=A0 =
.eob(eob_out),<br>=C2=A0 =C2=A0 =C2=A0.use_seqnum(1&#39;b0), =C2=A0 =C2=A0.=
seqnum(12&#39;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_length(1&#39;b0), =C2=A0 =C2=
=A0.length(16&#39;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_payload_length(1&#39;b0)=
, .payload_length(16&#39;d1024),<br>=C2=A0 =C2=A0 =C2=A0.use_src_sid(1&#39;=
b1), =C2=A0 .src_sid(src_sid),<br>=C2=A0 =C2=A0 =C2=A0.use_dst_sid(1&#39;b1=
), =C2=A0 .dst_sid(next_dst_sid),<br>=C2=A0 =C2=A0 =C2=A0.use_vita_time(1&#=
39;b0), .vita_time(64&#39;b0));</font></div><div><font face=3D"monospace"><=
br></font></div><div><font face=3D"monospace">=C2=A0 // Store the input tus=
er but only if its the first packet<br>=C2=A0 reg first_pkt_received;<br>=
=C2=A0 always @(posedge ce_clk) begin<br>=C2=A0 =C2=A0 case(state)<br>=C2=
=A0 =C2=A0 =C2=A0 RESET: <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 begin<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 in_tuser &lt;=3D 128&#39;b0;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 first_pkt_received =3D 1&#39;b0;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 end<br>=C2=A0 =C2=A0 =C2=A0 STORING:<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (~first_pkt_received) begin <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
f (samp_in_received &amp; samp_in_tlast) begin<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 in_tuser &lt;=3D samp_in_tuser;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 first_pkt_received &lt;=3D 1&#39;b1;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =C2=
=A0 endcase<br>=C2=A0 end<br>=C2=A0 <br>=C2=A0 // Keep track of the first o=
utput packet so that once it is sent<br>=C2=A0 // we can remove the time st=
amp from subsequent output packets<br>=C2=A0 always @(posedge ce_clk) begin=
<br>=C2=A0 =C2=A0 case(state)<br>=C2=A0 =C2=A0 =C2=A0 RESET: first_pkt_sent=
 &lt;=3D 1&#39;b0;<br>=C2=A0 =C2=A0 =C2=A0 STREAMING,FLUSHING :<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if (~first_pkt_sent) begin<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (samp_out_sent &amp; samp_out_tlast) begin<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 first_pkt_sent &lt;=3D 1&#39;b1;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =
=C2=A0 endcase<br>=C2=A0 end<br><br></font></div><div><br></div></div></div=
>

--000000000000e8a0080590fa1e66--


--===============6695998087649398042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6695998087649398042==--

