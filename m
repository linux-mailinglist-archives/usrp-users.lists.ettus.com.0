Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D48E28F6E6
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 18:36:25 +0200 (CEST)
Received: from [::1] (port=41368 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT6El-0002hm-FP; Thu, 15 Oct 2020 12:36:19 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:45069)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kT6Eh-0002ao-VL
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 12:36:16 -0400
Received: by mail-ot1-f47.google.com with SMTP id f37so3444211otf.12
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 09:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nB4zPBZGu32NtDz9bt6qdmkg3zrFqyEx8LAKx1KZHjU=;
 b=kcy0G/RtqChQyGoZLdinA7bN7ojrXRnYiMMu3II/5zWlguRiMyI+0oKqHXHRh1SQin
 JEu7QxLXiy2v1XqQ4f0Rxg7klJrDwT/VPHWi1/2PTBaRqKDLDSOfk5b6d+ys1Nbdz2WH
 uCPhJC0sAUojH6KOPrsuRPnDNyMA5cgCR6hYykzL8YVUyxEe+HGCse18I6aPdFMXGhnu
 liT4TWKcmgy9RmPiUqvqogzEGNGO2y5zQtBnKPgu9bZHUllzBJEh6vSy+TfitE4OFNJP
 /WXjxdexgwv6zVuf9xGlhO6DsJTzArGf2bZhmxwQNzjvTKUG+2zRKMLHBvbaqd9OaK88
 WqIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nB4zPBZGu32NtDz9bt6qdmkg3zrFqyEx8LAKx1KZHjU=;
 b=uihbiX8o1XvDMDTd3rS+p+CQhNN7kYjprVqWNTylkeh3OhL0IBre6cbkjlIhQZBhle
 GNtsbhljlnbT4YtyLV90/oTsuyJdK30UrHs5lii90SnkZfGsKRBCao/aDj5PUMY6v9Nd
 rsSxrT6dKg18H6IqEy8NoPur0OidGjclHMmVBTEA3xqQXWyySAP78fzPz/jsWjgMk41q
 rVOJAphrwBZREmB5kr7401uoW589fUVPHlJyOMo84Nu1SN26vbvtLmb9QUkOZ6/ET6kA
 7jR0er8jG7tGxROhKT9JoTVVnXZ8vYOcu0t1rjWVOM2cxKADHLK6IXVnXwQSgBejhYa0
 riuw==
X-Gm-Message-State: AOAM5322BV1KkS/L+Oox+X88FAo/Ls0QkMyVp9nCIQheQ3fpnwqAZZau
 e9lha/n6AuP/jQAx7l46Hi9gDHUDCqvPaLWLYMDMqNEu
X-Google-Smtp-Source: ABdhPJwuwjwtLSgxMGnxCV7ceVPb6kTdmifghLd3ZSUlL32pMVP4PB+AEZhG/vsjgyXvC5n/9kVlu6Xe0nJ89dXU6gw=
X-Received: by 2002:a9d:4904:: with SMTP id e4mr3507299otf.28.1602779735221;
 Thu, 15 Oct 2020 09:35:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTR_wKawKYJEYyD=yVdcN+UchMbSkhUVtSV5wf71W=K+3g@mail.gmail.com>
In-Reply-To: <CAB__hTR_wKawKYJEYyD=yVdcN+UchMbSkhUVtSV5wf71W=K+3g@mail.gmail.com>
Date: Thu, 15 Oct 2020 11:35:23 -0500
Message-ID: <CAFche=jRtYz-HFy_6J3bpb1X1rTrSk6+jPNj2FOtPLi2VcTsFg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Replay block in a bad state UHD-4.0
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============4458279510329202324=="
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

--===============4458279510329202324==
Content-Type: multipart/alternative; boundary="000000000000c57dab05b1b83c56"

--000000000000c57dab05b1b83c56
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

All the blocks should get reset when you create the RFNoC graph. But the
DRAM controller and related AXI4 interconnect are outside of RFNoC, so it
doesn't get reset when the blocks are reset. It's possible that the DRAM
logic is in a bad state as well. It doesn't look like there's a way
currently to reset the DRAM logic on demand.

Does the corruption still occur after fixing the bug you mentioned?

Wade



On Wed, Oct 14, 2020 at 6:10 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am using the Replay block and I ran into an issue where I have gotten
> the Replay block into a bad state which I can't seem to fix short of
> rebooting the N310.  The way I know it is in a bad state is that the data
> playing out is corrupted.  Although the playout is similar to what it
> should be, there are numerous gaps & drops that indicate the corruption.
> If I reboot the N310, the corruption disappears.  I would like to be able
> to "reset" things without requiring an N310 reboot.
>
> My custom software controls the Replay block with 3 functions:
> replay_store() and replay_play() and replay_stop(), all provided below.  I
> don't do anything tricky like trying to store and play simultaneously.  The
> replay_store() function is very similar to the
> rfnoc_replay_samples_from_file() example with the exception that it doesn't
> actually start or stop the playout. This occurs in my other 2 functions.
>
> The way that I get the replay block into a bad state is by failing to call
> replay_store() prior to replay_play().  This was a bug in my software that
> could occur in some situations (which I have since fixed). After this
> happens, I can't produce uncorrupted playouts without rebooting the N310.
>
> Let me know if you have any ideas how I can "reset" the Replay block to
> obtain uncorrupted output.
> Rob
>
>
> /*******************************************************/
> int nd::replay_store(
> uhd::rfnoc::replay_block_control::sptr replay_ptr,
> size_t port,
>     uhd::tx_streamer::sptr tx_stream,
> std::vector<char>& samp_vec,
> uint32_t addr
> ){
> const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
> std::to_string(port);
>
> // Constants related to the Replay block
> const size_t bytes_per_sample = 4; // Complex signed 16-bit is 32 bits per
> sample
> const size_t samples_per_word = 2; // Number of sc16 samples per 64-bit
> word
> const size_t bytes_per_word = bytes_per_sample*samples_per_word;
>
> size_t num_bytes = samp_vec.size();
>
> // Calculate the number of 64-bit words and samples to replay
> size_t words_to_replay = num_bytes / bytes_per_word;
> size_t samples_to_replay = words_to_replay * samples_per_word;
> uint32_t bytes_to_replay = words_to_replay * bytes_per_word;
>
> if (bytes_to_replay != num_bytes) {
> UHD_LOGGER_WARNING(__CLASS_AND_FUNC__) << ID
> << "Replay block requires an even number of samples. Truncating extra
> bytes";
> }
>
> // Configure a buffer in the on-board memory at address 0 that's equal in
> // size to the file we want to play back (rounded down to a multiple of
> // 64-bit words). Note that it is allowed to playback a different size or
> // location from what was recorded.
>     UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID <<
>     ": Configuring memory at addr 0x" << std::hex << addr << std::dec << "
> for " << bytes_to_replay << " bytes";
> replay_ptr->stop(port); // just in case it is presently playing
> replay_ptr->record(addr, bytes_to_replay, port);
>
> // Restart record buffer repeatedly until no new data appears on the Replay
> // block's input. This will flush any data that was buffered on the input.
> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Restarting record buffer";
> auto start_time = std::chrono::steady_clock::now();
> while (true)
>     {
> replay_ptr->record_restart(port);
> std::this_thread::sleep_for(std::chrono::milliseconds(20));
>
> uint32_t fullness = replay_ptr->get_record_fullness(port);
> if (fullness==0) break;
>
> std::chrono::duration<double> time_diff_s =
> std::chrono::steady_clock::now() - start_time;
> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID
> << ": Time: " << time_diff_s.count() << ": Fullness " << fullness;
>
> if (time_diff_s.count() > 2.0) {
> UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Timeout waiting to flush
> record buffer";
> return -1;
> }
> }
>
>
> ///////////////////////////////////////////////////////////////////////////
> // Send data to replay (record the data)
> UHD_LOGGER_INFO(__CLASS_AND_FUNC__) << ID << ": Sending " <<
> samples_to_replay << " samples";
>
> uhd::tx_metadata_t tx_md;
> tx_md.start_of_burst = true;
> tx_md.end_of_burst   = true;
> size_t num_tx_samps  = tx_stream->send(&samp_vec[0], samples_to_replay,
> tx_md);
>
> if (num_tx_samps != samples_to_replay) {
> UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Error sending samples: "
> << num_tx_samps << "/" << samples_to_replay;
> return -1;
> }
>
>
> ///////////////////////////////////////////////////////////////////////////
> // Wait for data to be stored in on-board memory
>
> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Waiting for recording to
> complete";
> start_time = std::chrono::steady_clock::now();
> while (true)
> {
> uint32_t fullness = replay_ptr->get_record_fullness(port);
> if (fullness>=bytes_to_replay) break;
>
> std::chrono::duration<double> time_diff_s =
> std::chrono::steady_clock::now() - start_time;
>
> UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) << ID << ": Time: (s): " <<
> time_diff_s.count()
> << ": Fullness: " << fullness << " / " << bytes_to_replay;
>
> if (time_diff_s.count() > 2.0) {
> UHD_LOGGER_ERROR(__CLASS_AND_FUNC__) << ID << ": Timeout waiting for
> recording to complete";
> return -1;
> }
>
> std::this_thread::sleep_for(std::chrono::milliseconds(1));
> }
>
> UHD_LOGGER_INFO(__CLASS_AND_FUNC__) << ID << ": Successfully sent " <<
> samples_to_replay << " samples";
>
> return samples_to_replay;
> }
> /*******************************************************/
>
>
>
> /*******************************************************/
> void nd::replay_play(
> uhd::rfnoc::replay_block_control::sptr replay_ptr,
> size_t port,
> const uhd::time_spec_t start_time
> ){
> const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
> std::to_string(port);
> uint64_t rec_addr = replay_ptr->get_record_offset(port);
> uint64_t rec_size = replay_ptr->get_record_size(port);
>
> UHD_LOGGER_DEBUG(ID) << "Replay Started. Samples: " << (rec_size/4);
> replay_ptr->play(rec_addr, rec_size, port, start_time, true);
> }
> /*******************************************************/
>
>
>
>
> /*******************************************************/
> void nd::replay_stop(
> uhd::rfnoc::replay_block_control::sptr replay_ptr,
> size_t port
> ){
> const std::string ID = replay_ptr->get_block_id().to_string() + ":" +
> std::to_string(port);
>
> UHD_LOGGER_DEBUG(ID) << "Replay Stopped";
> replay_ptr->stop(port);
> }
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c57dab05b1b83c56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>All the blocks shoul=
d get reset when you create the RFNoC graph. But the DRAM controller and re=
lated AXI4 interconnect are outside of RFNoC, so it doesn&#39;t get reset w=
hen the blocks are reset. It&#39;s possible that the DRAM logic is in a bad=
 state as well. It doesn&#39;t look like there&#39;s a way currently to res=
et the DRAM logic on demand.<br></div><div><br></div><div>Does the corrupti=
on still occur after fixing the bug you mentioned?</div><div><br></div><div=
>Wade<br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 14, 2020 at 6:10 P=
M Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I am using the R=
eplay block and I ran into an issue where I have gotten the Replay block in=
to a bad state which I can&#39;t seem to fix short of rebooting the N310.=
=C2=A0 The way I know it is in a bad state is that the data playing out is =
corrupted.=C2=A0 Although the playout is similar to what it should be, ther=
e are numerous gaps &amp; drops that indicate the corruption.=C2=A0 If I re=
boot the N310, the corruption disappears.=C2=A0 I would like to be able to =
&quot;reset&quot; things without requiring an N310 reboot.</div><div><br></=
div><div>My custom software controls the Replay block with 3 functions: rep=
lay_store() and replay_play() and replay_stop(), all provided below.=C2=A0 =
I don&#39;t do anything tricky like trying to store and play simultaneously=
.=C2=A0 The replay_store() function is very similar to the rfnoc_replay_sam=
ples_from_file() example with the exception that it doesn&#39;t actually st=
art or stop the playout. This occurs in my other 2 functions.</div><div><br=
></div><div>The way that I get the replay block into a bad state is by fail=
ing to call replay_store() prior to replay_play().=C2=A0 This was a bug in =
my software that could occur in some situations (which I have since fixed).=
 After this happens, I can&#39;t produce uncorrupted playouts without reboo=
ting the N310.</div><div><br></div><div>Let me know if you have any ideas h=
ow I can &quot;reset&quot; the Replay block to obtain uncorrupted output.</=
div><div>Rob</div><div><br></div><div><br></div><div><font face=3D"monospac=
e">/*******************************************************/</font><br></di=
v><div><font face=3D"monospace">int nd::replay_store(<br>	uhd::rfnoc::repla=
y_block_control::sptr replay_ptr,<br>	size_t port,<br>=C2=A0 =C2=A0 uhd::tx=
_streamer::sptr tx_stream,<br>	std::vector&lt;char&gt;&amp; samp_vec,<br>	u=
int32_t addr<br>){<br>	const std::string ID =3D replay_ptr-&gt;get_block_id=
().to_string() + &quot;:&quot; + std::to_string(port);<br>	<br>	// Constant=
s related to the Replay block<br>	const size_t bytes_per_sample =3D 4; // C=
omplex signed 16-bit is 32 bits per sample<br>	const size_t samples_per_wor=
d =3D 2; // Number of sc16 samples per 64-bit word<br>	const size_t bytes_p=
er_word =3D bytes_per_sample*samples_per_word;<br>	<br>	size_t num_bytes =
=3D samp_vec.size();<br>	<br>	// Calculate the number of 64-bit words and s=
amples to replay<br>	size_t words_to_replay =3D num_bytes / bytes_per_word;=
<br>	size_t samples_to_replay =3D words_to_replay * samples_per_word;<br>	u=
int32_t bytes_to_replay =3D words_to_replay * bytes_per_word;<br>	<br>	if (=
bytes_to_replay !=3D num_bytes) {<br>		UHD_LOGGER_WARNING(__CLASS_AND_FUNC_=
_) &lt;&lt; ID <br>		&lt;&lt; &quot;Replay block requires an even number of=
 samples. Truncating extra bytes&quot;;<br>	}<br>	<br>	// Configure a buffe=
r in the on-board memory at address 0 that&#39;s equal in<br>	// size to th=
e file we want to play back (rounded down to a multiple of<br>	// 64-bit wo=
rds). Note that it is allowed to playback a different size or<br>	// locati=
on from what was recorded.<br>=C2=A0 =C2=A0 UHD_LOGGER_DEBUG(__CLASS_AND_FU=
NC__) &lt;&lt; ID &lt;&lt;<br>=C2=A0 =C2=A0 &quot;: Configuring memory at a=
ddr 0x&quot; &lt;&lt; std::hex &lt;&lt; addr &lt;&lt; std::dec &lt;&lt; &qu=
ot; for &quot; &lt;&lt; bytes_to_replay &lt;&lt; &quot; bytes&quot;;<br>	re=
play_ptr-&gt;stop(port); // just in case it is presently playing<br>	replay=
_ptr-&gt;record(addr, bytes_to_replay, port);<br>	<br>	// Restart record bu=
ffer repeatedly until no new data appears on the Replay<br>	// block&#39;s =
input. This will flush any data that was buffered on the input.<br>	UHD_LOG=
GER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Restarting recor=
d buffer&quot;;<br>	auto start_time =3D std::chrono::steady_clock::now();<b=
r>	while (true) <br>=C2=A0 =C2=A0 {<br>		replay_ptr-&gt;record_restart(port=
);<br>		std::this_thread::sleep_for(std::chrono::milliseconds(20));<br>		<b=
r>		uint32_t fullness =3D replay_ptr-&gt;get_record_fullness(port);<br>		if=
 (fullness=3D=3D0) break;<br>		<br>		std::chrono::duration&lt;double&gt; ti=
me_diff_s =3D std::chrono::steady_clock::now() - start_time;<br>		UHD_LOGGE=
R_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID <br>		&lt;&lt; &quot;: Time: &quot;=
 &lt;&lt; time_diff_s.count() &lt;&lt; &quot;: Fullness &quot; &lt;&lt; ful=
lness;<br>		<br>		if (time_diff_s.count() &gt; 2.0) {<br>			UHD_LOGGER_ERRO=
R(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Timeout waiting to flush=
 record buffer&quot;;<br>			return -1;<br>		}<br>	}<br>	<br>	<br>	/////////=
//////////////////////////////////////////////////////////////////<br>	// S=
end data to replay (record the data)<br>	UHD_LOGGER_INFO(__CLASS_AND_FUNC__=
) &lt;&lt; ID &lt;&lt; &quot;: Sending &quot; &lt;&lt; samples_to_replay &l=
t;&lt; &quot; samples&quot;;<br>	<br>	uhd::tx_metadata_t tx_md;<br>	tx_md.s=
tart_of_burst =3D true;<br>	tx_md.end_of_burst =C2=A0 =3D true;<br>	size_t =
num_tx_samps =C2=A0=3D tx_stream-&gt;send(&amp;samp_vec[0], samples_to_repl=
ay, tx_md);<br>	<br>	if (num_tx_samps !=3D samples_to_replay) {<br>		UHD_LO=
GGER_ERROR(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Error sending s=
amples: &quot; &lt;&lt; num_tx_samps &lt;&lt; &quot;/&quot; &lt;&lt; sample=
s_to_replay;<br>		return -1;<br>	}<br>	<br>	<br>	//////////////////////////=
/////////////////////////////////////////////////<br>	// Wait for data to b=
e stored in on-board memory<br>	<br>	UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &=
lt;&lt; ID &lt;&lt; &quot;: Waiting for recording to complete&quot;;<br>	st=
art_time =3D std::chrono::steady_clock::now();<br>	while (true) <br>	{<br>	=
	uint32_t fullness =3D replay_ptr-&gt;get_record_fullness(port);<br>		if (f=
ullness&gt;=3Dbytes_to_replay) break;<br>		<br>		std::chrono::duration&lt;d=
ouble&gt; time_diff_s =3D std::chrono::steady_clock::now() - start_time;<br=
><br>		UHD_LOGGER_DEBUG(__CLASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Ti=
me: (s): &quot; &lt;&lt; time_diff_s.count()<br>		&lt;&lt; &quot;: Fullness=
: &quot; &lt;&lt; fullness &lt;&lt; &quot; / &quot; &lt;&lt; bytes_to_repla=
y;<br><br>		if (time_diff_s.count() &gt; 2.0) {<br>			UHD_LOGGER_ERROR(__CL=
ASS_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Timeout waiting for recording =
to complete&quot;;<br>			return -1;<br>		}<br>		<br>		std::this_thread::sle=
ep_for(std::chrono::milliseconds(1));<br>	}<br>	<br>	UHD_LOGGER_INFO(__CLAS=
S_AND_FUNC__) &lt;&lt; ID &lt;&lt; &quot;: Successfully sent &quot; &lt;&lt=
; samples_to_replay &lt;&lt; &quot; samples&quot;;<br>	<br>	return samples_=
to_replay;<br>}<br>/*******************************************************=
/<br><br><br><br>/*******************************************************/<=
/font></div><div><font face=3D"monospace">void nd::replay_play(<br>	uhd::rf=
noc::replay_block_control::sptr replay_ptr, <br>	size_t port,<br>	const uhd=
::time_spec_t start_time<br>){<br>	const std::string ID =3D replay_ptr-&gt;=
get_block_id().to_string() + &quot;:&quot; + std::to_string(port);<br>	uint=
64_t rec_addr =3D replay_ptr-&gt;get_record_offset(port);<br>	uint64_t rec_=
size =3D replay_ptr-&gt;get_record_size(port);<br><br>	UHD_LOGGER_DEBUG(ID)=
 &lt;&lt; &quot;Replay Started. Samples: &quot; &lt;&lt; (rec_size/4);<br>	=
replay_ptr-&gt;play(rec_addr, rec_size, port, start_time, true);<br>}<br>/*=
******************************************************/<br><br><br><br><br>=
/*******************************************************/<br>void nd::repla=
y_stop(<br>	uhd::rfnoc::replay_block_control::sptr replay_ptr,<br>	size_t p=
ort<br>){<br>	const std::string ID =3D replay_ptr-&gt;get_block_id().to_str=
ing() + &quot;:&quot; + std::to_string(port);<br>	<br>	UHD_LOGGER_DEBUG(ID)=
 &lt;&lt; &quot;Replay Stopped&quot;;<br>	replay_ptr-&gt;stop(port);<br>}<b=
r></font><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c57dab05b1b83c56--


--===============4458279510329202324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4458279510329202324==--

