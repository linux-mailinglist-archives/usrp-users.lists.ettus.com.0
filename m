Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DC49D357
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2019 17:50:39 +0200 (CEST)
Received: from [::1] (port=49920 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2HGO-00074G-VZ; Mon, 26 Aug 2019 11:50:36 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:33640)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i2HGL-0006zS-J1
 for usrp-users@lists.ettus.com; Mon, 26 Aug 2019 11:50:33 -0400
Received: by mail-ot1-f48.google.com with SMTP id p23so11453887oto.0
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 08:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=3n2IN013vU/yb2TMt3z+BGdlWBG5SssaXU32hL0KGug=;
 b=RTuv1sOcZ0Z49ZoCSb4h8/slP1Z0GxpnMZCiyLovIRwODjbbwhepsFPl2dXVLZCAjM
 rJhDS0aXuqEDqLwsKdl7Pk2AbS7QpDEkFYeJEsQ5lhLintPxRjV3jXpRGs+a8rRJF5PF
 Pp/FqDbyFUlIuSkw0U9JHtj7Xxmu9N3RLA5S7k6wh1Cy4SwOeQ5tEwLlR2Zt1kWLoD/Q
 CAICJRy1GvROzjM6OKuC0T92eV3GwsZ4/d5xhvozwDiv3etOVpqX5Na+u6zTzv2OnyeD
 hlMDXnMtt8lbOCik/C6cJb6dagRaL7UmfepdAzpcDOuUhXps/Pc9J8wO0Ayat2eDgM98
 FrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=3n2IN013vU/yb2TMt3z+BGdlWBG5SssaXU32hL0KGug=;
 b=rGEBivoJzs3MRduY9I2dR68oa8JmdXUv2FH9pgC395dYDVvYNRUZuM2IGKUOm5rfE4
 OrVcRZF4JvmawB+twir/Nz6i/6qs66XQU2iJbhUxjCeQMAFyLdZft+7T7H9WBJrhRPbm
 ABGn2AH1gzFC2t4/KF3eeUEQV168qWMkThp2PVwOmjGvNUkYEk5HgKl0fz7wC/AAPkXK
 oHE5xUFgspeNwZ55eM/vUUyIHFNkAoeqcoeHjE9IshPLg+oyHnrmBx5DxcnzObqGFoje
 zuRAi3WDb//5QlIRZbw53fDSzTi3Q2kS2lvKrZhhcf+SM457aHuDVeTy2bOhLcS0lxLq
 jXjw==
X-Gm-Message-State: APjAAAWcAd5731jbXOZZdqoUA+T8ZvpmZb6F73DxzEtxVYI5NAfNft8v
 tqSH/RjWnrAmqIfdkwBNGFbQ4Bbw+8evuGZT9ScV1F5P
X-Google-Smtp-Source: APXvYqyUYjHEwtvjGGnmVXj2vz8mW4EpfwvFb2/8MROT+5spepnv6G68lprr1mTXPBJASV08Pu8KeTYsAp5vs71tZkM=
X-Received: by 2002:a9d:7dc4:: with SMTP id k4mr16358464otn.171.1566834592431; 
 Mon, 26 Aug 2019 08:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTZAGZOu0GJQJ04=QmzFrdrb5YpfT9hyB54U1dre+jNaQ@mail.gmail.com>
In-Reply-To: <CAB__hTTZAGZOu0GJQJ04=QmzFrdrb5YpfT9hyB54U1dre+jNaQ@mail.gmail.com>
Date: Mon, 26 Aug 2019 11:49:41 -0400
Message-ID: <CAB__hTSj+1te5w+LdHWX5DBj3q5QLSc=FALxJT_R0pisUrRVvg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Custom RFNoC block handling of packet header
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
Content-Type: multipart/mixed; boundary="===============0371937033440304816=="
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

--===============0371937033440304816==
Content-Type: multipart/alternative; boundary="0000000000004dfcf70591071b76"

--0000000000004dfcf70591071b76
Content-Type: text/plain; charset="UTF-8"

Update.  I think my issue is not related to timestamps at all but rather
with resetting the address counter that plays out the samples.
Rob

On Sun, Aug 25, 2019 at 8:20 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I have a custom RFNoC block that is working with the exception that the
> sample timing isn't quite right. I'm not getting a consistent group delay
> from run to run even though I'm using timed starts for both tx and rx
> streaming.  (I'm using my own C++ app and calling UHD 3.14.1.0 directly for
> an N310 device).
>
> The following graph (using stock blocks) produces a consistent group delay
> (from host_tx to host_rx):
>   host_tx -> DUC -> Radio_0 -> DDC -> host_rx
> The following graph (adding MyBlock) produces a seemingly random group
> delay (as if the transmitter Radio is no longer respecting the time stamp):
>   host_tx -> MyBlock -> DUC -> Radio_0 -> DDC -> host_rx
> With either of these graphs, I'm basically measuring the Tx/Rx leakage
> signal.
>
> Please let me know if you have any ideas why the graph with MyBlock does
> not seem to be handling the packet header correctly.  Or, perhaps it's not
> the packet header, but something else that could be causing this??  Here
> are a few remarks:
>
>    - MyBlock is similar in function to the "replay" block.  Myblock
>    stores up one burst of incoming samples and then continuously plays this
>    burst repeatedly until told to stop.
>    - In MyBlock, I am storing the tuser data of the first incoming packet
>    to use as the first outgoing packet tuser data.  After that, the subsequent
>    outgoing packets do not include any timestamp (has_timestamp bit set to
>    zero).
>    - I have created a reasonably detailed test bench which seems to work
>    as expected such that the data streams as expected and the first packet
>    header matches the packet header that I send to it
>    - I have run an RFNoC graph with only MyBlock and it looks to me like
>    the timestamp info is forwarded as expected
>    - In the second graph above (the one that doesn't work), I am able to
>    produce "Late" errors ('L' on terminal) if I purposely use a start time in
>    the past. So, I know that in some way the time stamp is getting through.
>    - I am using the default block controller for MyBlock (in UHD)
>
> Below is the Verilog related to the tuser data.  Thanks for any help.
> Rob
>
>   // this reg stores the incoming tuser so that the it can
>   // be sent with the first outgoing tuser
>   reg [127:0] in_tuser;
>
>   // these keep track of when the first output packet is
>   // sent so that only the first one contains a replica
>   // of the incoming tuser timestamp and the rest of the
>   // outgoing packets have 'has_time' set to zero.
>   reg first_pkt_sent;
>   wire modify_time = first_pkt_sent ? 1'b1:1'b0;
>
>   // the following creates the output tuser based on the
>   // previously stored input tuser.  In addition to
>   // handling the time stamp, this block also fixes the
>   // SIDs and eob appropriately
>   cvita_hdr_modify #() hdr_modify
>     (.header_in(in_tuser),
>      .header_out(samp_out_tuser),
>      .use_pkt_type(1'b0),  .pkt_type(2'b0),
>      .use_has_time(modify_time),  .has_time(1'b0),
>      .use_eob(1'b1),       .eob(eob_out),
>      .use_seqnum(1'b0),    .seqnum(12'b0),
>      .use_length(1'b0),    .length(16'b0),
>      .use_payload_length(1'b0), .payload_length(16'd1024),
>      .use_src_sid(1'b1),   .src_sid(src_sid),
>      .use_dst_sid(1'b1),   .dst_sid(next_dst_sid),
>      .use_vita_time(1'b0), .vita_time(64'b0));
>
>   // Store the input tuser but only if its the first packet
>   reg first_pkt_received;
>   always @(posedge ce_clk) begin
>     case(state)
>       RESET:
>         begin
>           in_tuser <= 128'b0;
>           first_pkt_received = 1'b0;
>         end
>       STORING:
>         if (~first_pkt_received) begin
>           if (samp_in_received & samp_in_tlast) begin
>             in_tuser <= samp_in_tuser;
>             first_pkt_received <= 1'b1;
>           end
>         end
>     endcase
>   end
>
>   // Keep track of the first output packet so that once it is sent
>   // we can remove the time stamp from subsequent output packets
>   always @(posedge ce_clk) begin
>     case(state)
>       RESET: first_pkt_sent <= 1'b0;
>       STREAMING,FLUSHING :
>         if (~first_pkt_sent) begin
>           if (samp_out_sent & samp_out_tlast) begin
>             first_pkt_sent <= 1'b1;
>           end
>         end
>     endcase
>   end
>
>
>

--0000000000004dfcf70591071b76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Update.=C2=A0 I think my issue is not rel=
ated to timestamps at all but rather with resetting the address counter tha=
t plays out the samples.=C2=A0=C2=A0<div>Rob</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Aug 25, 2019 at 8=
:20 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi,<div>I have a custom RFNoC block that is working with the=
 exception that the sample timing isn&#39;t quite right. I&#39;m not gettin=
g a consistent group delay from run to run even though I&#39;m using timed =
starts for both tx and rx streaming.=C2=A0 (I&#39;m using my own C++ app an=
d calling UHD 3.14.1.0 directly for an N310 device).</div><div><br></div><d=
iv>The following graph (using stock blocks) produces a consistent group del=
ay (from host_tx to host_rx):</div><div><font face=3D"monospace">=C2=A0 hos=
t_tx -&gt; DUC -&gt; Radio_0 -&gt; DDC -&gt; host_rx</font></div><div>The f=
ollowing graph (adding MyBlock) produces a seemingly random group delay (as=
 if the transmitter Radio is no longer respecting the time stamp):</div><di=
v><font face=3D"monospace">=C2=A0 host_tx -&gt; MyBlock -&gt; DUC -&gt; Rad=
io_0 -&gt;</font><span style=3D"font-family:monospace">=C2=A0DDC -&gt; host=
_rx</span></div><div>With either of these graphs, I&#39;m basically measuri=
ng the Tx/Rx leakage signal.=C2=A0=C2=A0<br></div><div><br></div><div>Pleas=
e let me know if you have any ideas why the graph with MyBlock does not see=
m to be handling the packet header correctly.=C2=A0 Or, perhaps it&#39;s no=
t the packet header, but something else that could be causing this??=C2=A0 =
Here are a few remarks:</div><div><ul><li>MyBlock is similar in function to=
 the &quot;replay&quot; block.=C2=A0 Myblock stores up one burst of incomin=
g samples and then continuously plays this burst repeatedly until told to s=
top.</li><li>In MyBlock, I am storing the tuser data of the first incoming =
packet to use as the first outgoing packet tuser data.=C2=A0 After that, th=
e subsequent outgoing packets do not include any timestamp (has_timestamp b=
it set to zero).</li><li>I have created a reasonably detailed test bench wh=
ich seems to work as expected such that the data streams as expected and th=
e first packet header matches the packet header that I send to it</li><li>I=
 have run an RFNoC graph with only MyBlock and it looks to me like the time=
stamp info is forwarded as expected</li><li>In the second graph above (the =
one that doesn&#39;t work), I am able to produce &quot;Late&quot; errors (&=
#39;L&#39; on terminal) if I purposely use a start time in the past. So, I =
know that in some way the time stamp is getting through.</li><li>I am using=
 the default block controller for MyBlock (in UHD)</li></ul><div>Below is t=
he Verilog related to the tuser data.=C2=A0 Thanks for any help.</div><div>=
Rob</div><div><font face=3D"monospace">=C2=A0=C2=A0</font></div><div><font =
face=3D"monospace">=C2=A0 // this reg stores the incoming tuser so that the=
 it can<br>=C2=A0 // be sent with the first outgoing tuser<br>=C2=A0 reg [1=
27:0] in_tuser;<br><br>=C2=A0 // these keep track of when the first output =
packet is <br>=C2=A0 // sent so that only the first one contains a replica<=
br>=C2=A0 // of the incoming tuser timestamp and the rest of the<br>=C2=A0 =
// outgoing packets have &#39;has_time&#39; set to zero.<br>=C2=A0 reg firs=
t_pkt_sent;<br>=C2=A0 wire modify_time =3D first_pkt_sent ? 1&#39;b1:1&#39;=
b0;<br><br>=C2=A0 // the following creates the output tuser based on the<br=
>=C2=A0 // previously stored input tuser.=C2=A0 In addition to <br>=C2=A0 /=
/ handling the time stamp, this block also fixes the <br>=C2=A0 // SIDs and=
 eob appropriately<br>=C2=A0 cvita_hdr_modify #() hdr_modify<br>=C2=A0 =C2=
=A0 (.header_in(in_tuser),<br>=C2=A0 =C2=A0 =C2=A0.header_out(samp_out_tuse=
r),<br>=C2=A0 =C2=A0 =C2=A0.use_pkt_type(1&#39;b0), =C2=A0.pkt_type(2&#39;b=
0),<br>=C2=A0 =C2=A0 =C2=A0.use_has_time(modify_time), =C2=A0.has_time(1&#3=
9;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_eob(1&#39;b1), =C2=A0 =C2=A0 =C2=A0 .eob=
(eob_out),<br>=C2=A0 =C2=A0 =C2=A0.use_seqnum(1&#39;b0), =C2=A0 =C2=A0.seqn=
um(12&#39;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_length(1&#39;b0), =C2=A0 =C2=A0.=
length(16&#39;b0),<br>=C2=A0 =C2=A0 =C2=A0.use_payload_length(1&#39;b0), .p=
ayload_length(16&#39;d1024),<br>=C2=A0 =C2=A0 =C2=A0.use_src_sid(1&#39;b1),=
 =C2=A0 .src_sid(src_sid),<br>=C2=A0 =C2=A0 =C2=A0.use_dst_sid(1&#39;b1), =
=C2=A0 .dst_sid(next_dst_sid),<br>=C2=A0 =C2=A0 =C2=A0.use_vita_time(1&#39;=
b0), .vita_time(64&#39;b0));</font></div><div><font face=3D"monospace"><br>=
</font></div><div><font face=3D"monospace">=C2=A0 // Store the input tuser =
but only if its the first packet<br>=C2=A0 reg first_pkt_received;<br>=C2=
=A0 always @(posedge ce_clk) begin<br>=C2=A0 =C2=A0 case(state)<br>=C2=A0 =
=C2=A0 =C2=A0 RESET: <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 begin<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 in_tuser &lt;=3D 128&#39;b0;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 first_pkt_received =3D 1&#39;b0;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 end<br>=C2=A0 =C2=A0 =C2=A0 STORING:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if =
(~first_pkt_received) begin <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (samp=
_in_received &amp; samp_in_tlast) begin<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 in_tuser &lt;=3D samp_in_tuser;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 first_pkt_received &lt;=3D 1&#39;b1;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 end<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =C2=A0 endca=
se<br>=C2=A0 end<br>=C2=A0 <br>=C2=A0 // Keep track of the first output pac=
ket so that once it is sent<br>=C2=A0 // we can remove the time stamp from =
subsequent output packets<br>=C2=A0 always @(posedge ce_clk) begin<br>=C2=
=A0 =C2=A0 case(state)<br>=C2=A0 =C2=A0 =C2=A0 RESET: first_pkt_sent &lt;=
=3D 1&#39;b0;<br>=C2=A0 =C2=A0 =C2=A0 STREAMING,FLUSHING :<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 if (~first_pkt_sent) begin<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (samp_out_sent &amp; samp_out_tlast) begin<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 first_pkt_sent &lt;=3D 1&#39;b1;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 end<br>=C2=A0 =C2=
=A0 endcase<br>=C2=A0 end<br><br></font></div><div><br></div></div></div>
</blockquote></div></div>

--0000000000004dfcf70591071b76--


--===============0371937033440304816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0371937033440304816==--

