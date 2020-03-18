Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA0E18A96E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 00:47:05 +0100 (CET)
Received: from [::1] (port=59854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEiOu-0000Xf-8I; Wed, 18 Mar 2020 19:47:04 -0400
Received: from mout.gmx.net ([212.227.17.22]:59425)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jEiOq-0000Na-CL
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 19:47:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584575179;
 bh=mtGasvKpzw4vdcFBTvPryAkMEIEl3ACj7KI6XS6/Lnk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=b45aXef53KQxsuJ5dd9SQ19vPNg86XMxyaI9WoqrJPE/Ou32r90QVJ3Iv3kNpL0s2
 SpGCLIrKuD8I+1OeyF98tBgUsEYwMChW5Jo9i0uRf7Mo4YeodVWnfD+g54TKV1bO/+
 BBCSizFM9cKkSu3jLCzY8saz4Y4Pj/ZcI2xIxk6M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [216.46.11.210] ([216.46.11.210]) by web-mail.gmx.net
 (3c-app-gmx-bap69.server.lan [172.19.172.69]) (via HTTP); Thu, 19 Mar 2020
 00:46:19 +0100
MIME-Version: 1.0
Message-ID: <trinity-67ab4cfd-a450-4253-8edf-2d22a808d058-1584575179099@3c-app-gmx-bap69>
To: "Rob Kossler" <rkossler@nd.edu>
Date: Thu, 19 Mar 2020 00:46:19 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <CAB__hTSCG9vJDyfos8Vo51uun6+GVO0z2MKiAnwB5RxbQroHug@mail.gmail.com>
 <trinity-25b958ae-2910-49fd-a252-cca35e698948-1584115895450@3c-app-gmx-bs64>
 <CAB__hTRpVTqng7XcOgrCe5yCYUNZf8ZJVwj-nu8ScZJuf9ctvw@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:sMoMgoQ6sf0FngiWL99ryBl4aIpwEL4IPrzfDtOXp9wkZGkOk/uBzvNHln43zljgD6uOJ
 6oIz131Yl7kxK9REoeZVQvhoTgIgCQ5HZu7XTD5EBW7Ce17YtCZaxYUunpe3aBRafp7ERJREyAAk
 9jMVlV2sRdgesf9Oo0QK1lz8s6m2aX26IMRZjcw5RQBRGgAsLWliWmRKvDAkmSkScJUVtIg4yyek
 g2bChVXWjMmBoq3Fo1lY22iN3PNucSIYsByLrT1bcUY7X/rAVr7LN9O/no2NyHyyMwi3E5FSosNU
 ms=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AlHlcr7JTMc=:FJ5CoMYvx4zmbxWTZPV0zf
 JJr+j/WGBjrDqzj1aX/s82gKFuHcPej047zftD7cm2HdZfcbWvxnuefwp3SbYX2Ga7rrF+gc3
 VoBj475kbiIsKHb8RmuRSmZhYZzwo/fR2kQpBuclmmjLwqZH55vuqUeieLJIvULOxoI11ueRE
 Z6wanIMk0eRyPJ1ql9Dk0XPB4KPu4NSN3TKyvBBlaSZqUF778QKrRETkAUeOA+VYB8HZugrpx
 z7E1PmQYYlngULel1fgAvu6q8YAcuiCBfK9l6FBImMdtO26Fyygan5VY68gmzUN9nfTHD5etj
 McqW0NL1dYB/BaPD7uS0Tzj3IrYmh1urpIaj99B/QXv1nQz4GPbzogzjjNtgIibSpV+kOjiCt
 gy6GlqobPxVU943U0rEecP9n1t4Ab1xBAwOMRS6LG8qYJS6NE/C5/s+7g0Ps5oiR8zpO+f7xt
 51BirOlEPDt6r0Et5biMb5XFXmRCco0NKtdwGQJhTrK/Q5zGCPNrWmIRr/Q3BPzrwr0opBOHL
 sLwHCPRxGBdCh/rMhJIpFX5sRcZEObhzwmAidtFyXW9n+U3LjnehaCbSIAx2GiMYsi8i43Yr2
 tQ9u8K/nDZsXQPof2l43Ue+mQcB39hh7wrf1GiJl+GExS4QjGNeBxM4f1weZ43cO/V6/rRtvG
 sKEXFLI6x+NjvXs3+Pal38T2nlkcuTZFb6eOIIl0HMvXWO3GrBx8VQa9vc1N5wSxHAe4=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8587319041690154936=="
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

--===============8587319041690154936==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi Rob,</div>

<div>&nbsp;</div>

<div>I think the issue is really having two usrp_multi devices with timed commands and same timestmap or similar. From your tests below:</div>

<div>&nbsp;</div>

<div>1.) I can <strong>confirm </strong>that the relative phase between two RX in your suggested test is always the same! In fact, it is always 4.56 rad, even across restarts and for different frequencies! That somewhat makes sense because the phase offset is now only dependent on the difference between the two channels (fixed) and cable lengths from the splitter (fixed). I verified by removing the timed command on usrp source, the phase offset becomes random after each retune. Of course, this is independent of TX tuning (timed vs. not). For reference, this is the code used:</div>

<div>&nbsp;</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq = -dsp_freq</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq = dsp_freq</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; now = usrp_sink.get_time_now()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when = now + uhd.time_spec(1.0)</div>
&nbsp;

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.set_command_time(when)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.set_command_time(when)</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res1 = usrp_sink.set_center_freq(tune_req_tx)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # TX<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res2 = usrp_source.set_center_freq(tune_req_rx, 0)&nbsp; #RX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res3 = usrp_source.set_center_freq(tune_req_rx, 1)&nbsp; #RX2</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.clear_command_time()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.clear_command_time()</div>
</div>

<div>&nbsp;
<div>
<div>2.) I also tried your second suggestion. Before reading on, you wanna guess what the outcome is?</div>

<div>I connected &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #1 (TX1 --&gt; RX1) and &quot;TX/RX&quot; to &quot;RX2&quot; on UBX #2 (TX2 --&gt; RX2). In absence of a second 30dB attenuator I used two antennas closely spaced together. For reference, my code looks now like:</div>

<div>&nbsp;</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_rx.dsp_freq = -dsp_freq</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx = uhd.tune_request()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.rf_freq_policy = uhd.tune_request.POLICY_NONE<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq_policy = uhd.tune_request.POLICY_MANUAL<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tune_req_tx.dsp_freq = dsp_freq</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; now = usrp_sink.get_time_now()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; when = now + uhd.time_spec(1.0)</div>
&nbsp;

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.set_command_time(when)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.set_command_time(when)</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res1 = usrp_sink.set_center_freq(tune_req_tx, 0)&nbsp; &nbsp;&nbsp; # TX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res2 = usrp_sink.set_center_freq(tune_req_tx, 1)&nbsp;&nbsp;&nbsp;&nbsp; # TX2<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res3 = usrp_source.set_center_freq(tune_req_rx, 0) # RX1<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; res4 = usrp_source.set_center_freq(tune_req_rx, 1) # RX2</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_sink.clear_command_time()<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_source.clear_command_time()</div>
</div>

<div>&nbsp;</div>

<div>I again look at the <strong>relative phase</strong> of RX1 and RX2 (obtained by dividing the two) and guess what: Also now the relative phase stays constant! (This time it actually slightly varies from 3.0 rad to 3.7 rad between two different frequencies).</div>

<div>What does that mean? I think it means that TX must be tuned coherently and RX must be tuned coherently, i.e., timed commands generally work for multiple TX&#39;s and multiple RX&#39;s <strong>individually</strong>. Do I get that right?</div>

<div>&nbsp;</div>

<div>What doesn&#39;t seem to work is RX+TX <strong>together</strong>.</div>

<div>&nbsp;</div>

<div>I am very desperately asking if you had coherent TX+RX setup working at any point or know somebody who did. It would be so much worth to know if this is something that never worked to begin with or if I&#39;m just doing something wrong. On the other hand I don&#39;t want to believe being the only person on the planet having tried TX+RX phase coherent operation :-/</div>

<div>&nbsp;</div>
Any other further suggestions on how to continue debugging with the above in mind would be helpful too.

<div>&nbsp;</div>

<div>In my opinion there are two options left:</div>

<div>1.) There is still a nondeterministic delay between the TX and RX timed commands (to my understanding, even a constant delay would result in coherent phase)</div>

<div>2.) While the phase accumulators in RX are set to the same values (and in TX as well), they may be set to a different, random value.</div>

<div>&nbsp;</div>

<div>However, I don&#39;t really know how to test these.</div>

<div>&nbsp;</div>

<div>Thanks,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div style="margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0 10.0px 10.0px;border-left: 2.0px solid rgb(195,217,229);">
<div style="margin: 0 0 10.0px 0;"><b>Gesendet:</b>&nbsp;Freitag, 13. M&auml;rz 2020 um 12:27 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Rob Kossler&quot; &lt;rkossler@nd.edu&gt;<br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;lukashaase@gmx.at&gt;<br/>
<b>Cc:</b>&nbsp;&quot;Marcus D Leech&quot; &lt;patchvonbraun@gmail.com&gt;, &quot;USRP-users@lists.ettus.com&quot; &lt;usrp-users@lists.ettus.com&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a timed command</div>

<div>
<div>
<div>Ok, great.&nbsp; I am trying to think of ways to now add the phase measurement.&nbsp; Ideas...</div>

<div>
<ul>
	<li>In order to get consistent phase, you would need to tune Rx and Tx DSP at the same time (rather than below where you are only tuning one of them).&nbsp; So, assuming that this will not produce consistent phase results, then maybe try the following idea...</li>
	<li>If you want to check just Rx DSP tuning (with fixed Tx DSP tuning), you could try a 2 channel Rx measurement where the Tx is split externally with 1:2 splitter in order to drive both Rx0 and Rx1.&nbsp; Then, measure the relative phase Rx0/Rx1 and then tune back and forth between two Rx DSP freqs to see if the relative phase on Rx remains constant.&nbsp; If so, this would give you good confidence that Rx DSP tuning is indeed happening synchronously</li>
	<li>Assuming that the Rx IS synchronous in the step above (perhaps a bad assumption, but here goes), you could then check TX DSP tuning (with fixed Rx DSP tuning) by using two Tx and two Rx channels with Tx0 connected to Rx0 and Tx1 connected to Rx1.&nbsp; At this point we are confident that Rx DSP tuning is synchronous so any synchronous misbehavior would imply a Tx sync problem.</li>
</ul>

<div>Sorry I can&#39;t think of better ideas.&nbsp;&nbsp;</div>

<div>Rob</div>
</div>
&nbsp;

<div class="gmail_quote">
<div class="gmail_attr">On Fri, Mar 13, 2020 at 12:12 PM Lukas Haase &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0.0px 0.0px 0.0px 0.8ex;border-left: 1.0px solid rgb(204,204,204);padding-left: 1.0ex;">Hi Rob,<br/>
<br/>
1.) yes, works(*)<br/>
2.) yes, works(*)<br/>
<br/>
(*): qualitatively. I set the timed command to &quot;get_current_time() + uhd.time_spec(2.0)&quot; and I see the chance 2 seconds after my click on the screen. I cannot (do not know how) check if it actually happens at sample-precicse location.<br/>
<br/>
Great, any ideas to simplify the setup would nice. I just don&#39;t know how I could continue to debugging the phase.<br/>
<br/>
Best,<br/>
Luke<br/>
<br/>
<br/>
Gesendet:&nbsp;Freitag, 13. M&auml;rz 2020 um 11:08 Uhr<br/>
Von:&nbsp;&quot;Rob Kossler&quot; &lt;<a href="mailto:rkossler@nd.edu" onclick="parent.window.location.href=&#39;mailto:rkossler@nd.edu&#39;; return false;" target="_blank">rkossler@nd.edu</a>&gt;<br/>
An:&nbsp;&quot;Lukas Haase&quot; &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt;<br/>
Cc:&nbsp;&quot;Marcus D Leech&quot; &lt;<a href="mailto:patchvonbraun@gmail.com" onclick="parent.window.location.href=&#39;mailto:patchvonbraun@gmail.com&#39;; return false;" target="_blank">patchvonbraun@gmail.com</a>&gt;, &quot;<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a>&quot; &lt;<a href="mailto:usrp-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:usrp-users@lists.ettus.com&#39;; return false;" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br/>
Betreff:&nbsp;Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a timed command<br/>
<br/>
Thanks Lukas,<br/>
I wanted to confirm that you did not have an older version of FPGA firmware because there was a DDC/DUC bug fix[<a href="https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d" target="_blank">https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d</a>] related to phase.&nbsp; However, the version you provided with uhd_usrp_probe confirms that you have the bug fix included.&nbsp; So, this is not the problem.&nbsp;<br/>
&nbsp;<br/>
From what you said, I assume that you can successfully do the following:<br/>
1) with Rx tuning fixed (no re-tuning at all), tune Tx DSP only (do not change TX RF) and you can see the frequency change at the specified command time (i.e., if you specify the command time 1 sec in the future, the change does not occur until 1 sec in the future).<br/>
2) opposite of #1: with Tx tuning fixed, tune Rx DSP only and you can see the frequency change at the specified command time.<br/>
&nbsp;<br/>
I am trying to simplify the issue by removing RF tuning completely and by tuning only 1 of Rx/Tx at a time.&nbsp; Perhaps this will help lead to the answer.<br/>
Rob<br/>
&nbsp;<br/>
&nbsp;&nbsp;<br/>
<br/>
On Fri, Mar 13, 2020 at 10:53 AM Lukas Haase &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>[mailto:<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>]&gt; wrote:Hi again Rob,<br/>
<br/>
Yes, I confirm:<br/>
<br/>
1.) Finally I get the commands to execute at the same time (TX and RX individually and both at the same time)<br/>
2.) Yes, the phase is random after each retune, even when I retune back to the same frequency<br/>
3.) (2) is only true if it includes *DSP* retuning. With naalog retuning (+integer-N retuning) I get phase coherence, as expected.<br/>
<br/>
I actually expected the PLL retuning much more challenging than the DSP retuning but for some reason it seems to be the opposite...<br/>
<br/>
Thanks,<br/>
Lukas<br/>
&nbsp;<br/>
&nbsp;&nbsp;<br/>
&nbsp;</blockquote>
</div>
</div>
</div>
</div>
</div>
</div></div></body></html>


--===============8587319041690154936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8587319041690154936==--
