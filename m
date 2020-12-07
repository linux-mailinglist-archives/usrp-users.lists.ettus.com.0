Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3092D0BC7
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 09:33:52 +0100 (CET)
Received: from [::1] (port=34048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmBxv-00079R-L2; Mon, 07 Dec 2020 03:33:51 -0500
Received: from mout.gmx.net ([212.227.17.21]:33259)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1kmBxr-00072S-1o
 for USRP-users@lists.ettus.com; Mon, 07 Dec 2020 03:33:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1607329985;
 bh=1OwnlNnJWHZlctshcZL578rzR7TVQDSLpebOxX/YGuw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SWlyhuZUT6+zI7/plReqjMCr6s9gGNMCve2fbfI5wy0IwAEPR7CQY5b6FjTH67NR5
 6FQgnmABHNAXOyoT4s72/2IveAX2FkxN1sRiOvP+Ses1NmySry1aeiKDItLFvCKYo/
 /Tpt3JzS6z6fzCkqXDe5oLrpnVBtdddhkbCKVMfY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [107.173.69.236] ([107.173.69.236]) by web-mail.gmx.net
 (3c-app-gmx-bap08.server.lan [172.19.172.78]) (via HTTP); Mon, 7 Dec 2020
 09:33:05 +0100
MIME-Version: 1.0
Message-ID: <trinity-829f7a09-14a7-41a2-bb32-60ff4c499bcd-1607329985390@3c-app-gmx-bap08>
To: cyberphox <cyberphox@gmail.com>
Date: Mon, 7 Dec 2020 09:33:05 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAOkUcSvLkNWOdK8HTt_kPV043t6ppkPZSaPzmnRaatngoFgUAw@mail.gmail.com>
References: <trinity-a9e545d1-8706-4d8e-aeb5-1c2492fc8b6c-1606726945931@3c-app-gmx-bap15>
 <D28E5616-DFCA-498D-9136-634583AB43EB@gmail.com>
 <trinity-d628c5aa-086f-4f3b-baf9-b2a1baa0f3a3-1606762444896@3c-app-gmx-bs06>
 <5FC56D41.8030400@gmail.com>
 <trinity-2d019907-a4ad-4db8-96ab-f6af03a7ef20-1607304823144@3c-app-gmx-bap46>
 <CAOkUcSvLkNWOdK8HTt_kPV043t6ppkPZSaPzmnRaatngoFgUAw@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Ane301ZG8bXgaAdWNFQks96oWkvEEuVOidu3eZtYeoGppZIp4bix6O25arVi4FS0mHER/
 lV71KzFHYuy2z+WTxwx6jZLUa4jJ4azOL/n74S8iwpWHeufU7b5N29HRu78HjJOCCz4t2hirIVTf
 ofTzmqhieG3E5+O92C1dCMn+CXuesk2LL0EQHS7L8Mjq0IvJE0NWY4V0n6OTxDawYy7T6YcKZcsI
 1uhujMo2DJ3gClB3XhJp4d87JGY7SZ2cx3+HbwLTdjpLfC5Gn3kgJKLPlIzzK859wec8bE3utdDY
 Ng=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Y0qefEbNkQI=:b4S/KG3MDsw43y3/SVZCdF
 J+hIOvT4is9EpRhARZwxYV+gHfJRQMdrWc7ySgscqOJTnLl5wOWtiZglu5C19h+Bi/ZHea6C5
 gu4LAp8VR9028bX+RUUmM7T8+jjp4KmMTM2KtIcUngZ51W98U2JgcT+wLcyIiU29UO0fd6hkh
 RSxfiS74q/ZgDXasjmdLy3K3gbNAnww+aq/1Io8scQLo0PfpMdgIB9bn2BX78z7DdfDQ/ISWP
 id/0BMjr4dwTdqruVa+1jEbmxwKKyUfAlcf5YMhWQ64kypNVRdvMn6KMD/Yfmf7oUGYahZhQX
 IsejoPMVQq/CKribeODkyWk5FdWR6sSjCHHSUdlEROYx+1IodfqcrB8fXwPMvo6EP5WAKiwO3
 R+LNOqfrfmUbBYelAsVwr2zNarR4Kxgjw9rw2fwcC6u/l5YtxE0AU5wfqfDIhuHiZ4B1kameO
 ATzKOvPjUgTn60n+SyKSN8DtA9AvTtIDGnaSdxSsOKxTg9E/hnOqapjpoH0GjrNaWUdfp88gS
 7HsaTj0TJWzJxBbddnv39AxtTic27XXWwyxsPbu6kYvQZLwS+SI7SVRNeV/47YNVDbSJ/YrSh
 Yrx8Er4P6p9gg=
Subject: Re: [USRP-users] UBX160 TX "noise figure"?
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7482869302831422403=="
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

--===============7482869302831422403==
Content-Type: multipart/related;
 boundary=rehcsed-f7746e74-1399-47ef-8444-6b0b570b10ab

--rehcsed-f7746e74-1399-47ef-8444-6b0b570b10ab
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi Marino,</div>

<div>&nbsp;</div>

<div>Which digital attenuator do you mean?</div>

<div>&nbsp;</div>

<ul>
	<li>The 46.43dB attenuation that I use in the TX-RX loopback is just composed of static, passive attenuators</li>
	<li>The receive gain is set to 20dB. Hence I assume I do not make use of the 6dB &quot;digital gain&quot; in the ADC and from the remaining 31.6dB gain I use 20. Hence I the &quot;digital attenuator&quot; should be 11.5dB if that answers your question?</li>
	<li>At a receive gain of 20dB, the noise figure is ~5dB, according to specs and measurements. -174+5+dB10(5e6)=-102dBm which is exactly what I measure without a signal applied.</li>
</ul>

<div>
<div>
<div>Thanks,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div name="quote" style="margin:10px 5px 5px 10px; padding: 10px 0 10px 10px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Montag, 07. Dezember 2020 um 03:23 Uhr<br/>
<b>Von:</b>&nbsp;&quot;cyberphox&quot; &lt;cyberphox@gmail.com&gt;<br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;lukashaase@gmx.at&gt;<br/>
<b>Cc:</b>&nbsp;&quot;Marcus D. Leech&quot; &lt;patchvonbraun@gmail.com&gt;, USRP-users@lists.ettus.com<br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] UBX160 TX &quot;noise figure&quot;?</div>

<div name="quoted-content">
<div>Hi Lukas,</div>

<div>&nbsp;</div>

<div>What setting do you have the digital attenuator set to?</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>Kind&nbsp;regards</div>

<div>&nbsp;</div>

<div>Marino</div>

<div>&nbsp;</div>

<div>&nbsp;
<div class="gmail_quote">
<div class="gmail_attr">On Mon, 7 Dec 2020 at 02:05, Lukas Haase via USRP-users &lt;<a href="mailto:usrp-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:usrp-users@lists.ettus.com&#39;; return false;" target="_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div>

<blockquote class="gmail_quote" style="margin: 0 0 0 0.8ex;border-left: 1.0px rgb(204,204,204) solid;padding-left: 1.0ex;">
<div>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Hi Marcus,</div>

<div>&nbsp;</div>

<div>Thanks again!</div>

<div>&nbsp;</div>

<div>I did now the following experiment: I connected TX to RX back-to-back with 46.43dB attenuation in between. I set TX gain and RX gain to 20dB and transmit a single CW at -3dBFS.</div>

<div>This means my output power is <strong>Pout=11.44dBm</strong> (cross checked with spectrum analyzer) and on RX I sould have Pin=-34.99dBm. Indeed, calculating the RMS of the received signal and converting to dBm, I get <strong>Pin=-35.0224dBm</strong>. Spot on!</div>

<div>&nbsp;</div>

<div>The red line is what I receive on the PSD (blue is the TX that I send):</div>

<div>&nbsp;</div>

<div><img src="cid:1763c4a6db0b351e2843" style="width: 560.0px;max-width: 100.0%;"/></div>

<div>&nbsp;</div>

<div>As you can see from the annotation, the measured &quot;SNR&quot; of the received signal is only 38.7dB. I think this is mainly caused by the phase noise skirt (and potentially the I/Q image).</div>

<div>In order to keep only consider thermal noise, I add random noise to the original CW (using <span style="font-family: Courier New , Courier , monospace;">randn(...)+1i*randn(...)</span> in MATLAB) until it matches roughly the white noise floor of the received signal. It&#39;s <strong>SNRoutput=50dB</strong> (yellow line).</div>

<div>&nbsp;</div>

<div>Now, according to our discussion below, at Gtx=20, we should have <strong>SNRoutput=72dB</strong> (assuming thermal noise only).</div>

<div>&nbsp;</div>

<div>Where could the <strong>22dB difference</strong> in SNR come from?</div>

<div>&nbsp;</div>

<div>
<div>Thanks!</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>PS: I am aware of phase noise, DC offsets, I/Q imbalance etc. But as you can see from my plot, I am <em>only </em>considerung thermal noise. The thermal noise of the receiver should be orders of magnitude lower (at least -102dBm) so the receiver noise should not limit the results either.</div>

<div>&nbsp;</div>

<div>&nbsp;
<div style="margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0 10.0px 10.0px;border-left: 2.0px solid rgb(195,217,229);">
<div style="margin: 0 0 10.0px 0;"><b>Gesendet:</b>&nbsp;Montag, 30. November 2020 um 17:08 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Marcus D. Leech&quot; &lt;<a href="mailto:patchvonbraun@gmail.com" onclick="parent.window.location.href=&#39;mailto:patchvonbraun@gmail.com&#39;; return false;" target="_blank">patchvonbraun@gmail.com</a>&gt;</div>
</div>
</div>
</div>
</div>
</div>

<div>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>
<div>
<div style="margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0 10.0px 10.0px;border-left: 2.0px solid rgb(195,217,229);">
<div style="margin: 0 0 10.0px 0;"><br/>
<b>An:</b>&nbsp;&quot;Lukas Haase&quot; &lt;<a href="mailto:lukashaase@gmx.at" onclick="parent.window.location.href=&#39;mailto:lukashaase@gmx.at&#39;; return false;" target="_blank">lukashaase@gmx.at</a>&gt;<br/>
<b>Cc:</b>&nbsp;<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a><br/>
<b>Betreff:</b>&nbsp;Re: [USRP-users] UBX160 TX &quot;noise figure&quot;?</div>

<div>
<div style="background-color: rgb(255,255,255);">
<div>On 11/30/2020 01:54 PM, Lukas Haase wrote:</div>

<blockquote>
<div style="font-family: Verdana;font-size: 12.0px;">
<div>Hi Marcus,</div>

<div>&nbsp;</div>

<div>That makes sense, thanks.</div>

<div>&nbsp;</div>

<div>Would you be willing to confirm if what I am doing here is correct?</div>

<div>&nbsp;</div>

<div><img src="cid:1763c4a6db0b351e2842" style="width: 702.0px;max-width: 100.0%;"/></div>

<div>
<div>&nbsp;</div>

<div>To first order, the DAC has an SNR of 98dB (16 bit). Then I use Fries&#39; equation to get the NF of the following stages (for the filter and the attenuator, the noise figure is equal to its attenuation). The NF is dominated by the 2nd and third term.</div>

<div>Then I subtract the NF from the SNR which gives me an output SNR somewhere between 92dB and 67dB. Does that sound right?</div>

<div>&nbsp;</div>

<div><img src="cid:1763c4a6db0b351e2841" style="width: 505.0px;max-width: 100.0%;"/></div>

<div>&nbsp;</div>

<div>&nbsp;</div>
</div>
</div>
</blockquote>
For the attenuator term, just assign it a NF (in dB) of (31.5 - TXGAIN).<br/>
<br/>
The noise figure of an attenuator is just the attenuation value--similarly for the filter.&nbsp; Just pretend it&#39;s a fixed attenuator with 0 gain.<br/>
<br/>
So the &#39;noise figure&#39; after the DAC is just&nbsp; 2+(31.5 - TXGAIN) then factor in the gains and noise figures of the amplifiers.<br/>
<br/>
<br/>
&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br/>
USRP-users mailing list<br/>
<a href="mailto:USRP-users@lists.ettus.com" onclick="parent.window.location.href=&#39;mailto:USRP-users@lists.ettus.com&#39;; return false;" target="_blank">USRP-users@lists.ettus.com</a><br/>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></blockquote>
</div>
</div>
</div>
</div>
</div>
</div></div></body></html>
--rehcsed-f7746e74-1399-47ef-8444-6b0b570b10ab
Content-Type: image/png
Content-Disposition: inline
Content-ID: <1763c4a6db0b351e2843>
Content-Transfer-Encoding: base64

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
--rehcsed-f7746e74-1399-47ef-8444-6b0b570b10ab
Content-Type: image/png
Content-Disposition: inline
Content-ID: <1763c4a6db0b351e2842>
Content-Transfer-Encoding: base64

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
dHVQKFWLhRai20hpUouv+ppVscKqkmgj71oV3GdOw26Ioo3jYIqvBJlH+9GKlN7IZb3PAsXLR8tD
y0thU+FWk3bcbic+yaQDGl8rld5PG2t3QOImHfzoVLT6GmpnHW8BW6R4+ZRBIUTloJa3RXF3CvON
XTupssunKr8VXdT3q9d/y/zgh8W3O6qHbh0o0nIrWof0fE2/u2f+I3d0RfG65w8mbvs+mG+356nt
dDwMjXt8jHTwdd9r+H6pfUnq8/Q9dfDStQuctB5VG3x9re+RnH28e118GbnlNC3tH3RWSY0+2hdi
No24uK0KTdkxL8q48om3MGlSC5M2Qmp9jbcqxVue2rQxLrv+uNbDabvflEFnUfQdyriDW9nlU6WT
L/zDRHVTz9VBmspKrcRFX3vXt4e3E731y80doaHumlT3yhC/wCk9LnWbaT3KD77Np22LuunpgEb7
hrxro1AcwRdelE++sstHYVMb8kUON+Rancvo59vm+uMOENQtZdKzU9v+x1Fz7S1HC11Ah+m0ue7F
6SymG41F3ffK6iPdFG0PvjqrpANsnSFte8CfN4IvvCiffGWXj05TakOurj6LotYF18931paFttYf
BV13sZdOKaN+2lr34nS6u+sXOLU1+Go7rOuV1Mqr7oXcha18BF94UT75yi6fsm8gMS13i1x1WZlF
W+uPG3JOreJda2FrirbWPUlf4NTlMwdtDL7qEqjhCNUAoWtbUA2CL7won3xll48beUQbvkVyF2Cp
X9ks2lh/tCNS2aglZtEHKMjWxronqnPaTugCYS5wal/w1fZFgVfBt+0jciwawRdelE++ssvHnT5f
dAuOTpvqe6hv2SzaVn901bwbjUT9KVFfbat7OrOgOscFTkltCb7qyqARdbR8df1A0YtlMT2CL7wo
n3xllo9aebURV5+9RYv3850lhLet/riLD9XiRheHemtT3Ytf4FTGMINt0obgq2WqZatlXJehOruA
4AsvyidfmeWju3FpI64L3OrADdU1y9BIbao/8TF7Z+37jOq1oe7pAFTjQ6veqTWQC5xGNTn4qtVe
rfdavl0ckWPRCL7wonzylVk+ru+obuBSB+4OY7OMMNGm+qM+dyqPuhyYIF/T6576d3KB03hNDb7q
n61+2jp7xLUCi0HwhRflk6/M8nGn0e+674VozmKppUnfZ5YL3NpSf7RjVVnodCStbs3Q5LoXv8Bp
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
--rehcsed-f7746e74-1399-47ef-8444-6b0b570b10ab
Content-Type: image/png
Content-Disposition: inline
Content-ID: <1763c4a6db0b351e2841>
Content-Transfer-Encoding: base64

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
A+qOv0lUvw5rAAAAAElFTkSuQmCC
--rehcsed-f7746e74-1399-47ef-8444-6b0b570b10ab--



--===============7482869302831422403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7482869302831422403==--


