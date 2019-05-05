Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F43414101
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 18:15:41 +0200 (CEST)
Received: from [::1] (port=50640 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNJne-0005AJ-Jn; Sun, 05 May 2019 12:15:38 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:38263)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <digitalturtle2010@gmail.com>)
 id 1hNJn6-000512-L8
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 12:15:34 -0400
Received: by mail-ua1-f49.google.com with SMTP id t15so3806728uao.5
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 09:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=U/NW+U+PfZ4FYl5JDJk11daeRh+5HeTOqVZjN1J2xCs=;
 b=plIaNX3uYRHshUj3RchKQTPlr24AtIHhh/s902LLPriAeT/F33gLVT6PJwi8pnPzs5
 teziaGebmps2uc6fQQk5jnlIv94U6VW6BAuLdH/qGujBoaNs5oo1j6Fi1LPyykeq/fPO
 cHFDyFGl5TdD4LAXb3+No0PKdV3nJC9LDJevVZj6j3nsE6Snjl3vm+JLVQIOfpU7d+nN
 ZegPwf7RCcqmX+9lQ2LYChoEfYqpJPgaE5uWzOVgg6qHWPIo/qPkAif+NuaAV2L0cVp3
 /ucmXoN9/Vtg4obVp57q/KDfGU0M+Nwu9Sd7qXQHTcuqm7LUtLwJFXKWZcEhBOnrJTni
 eDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=U/NW+U+PfZ4FYl5JDJk11daeRh+5HeTOqVZjN1J2xCs=;
 b=frIrx33XZPK1ZFAAWFT70b0DSnMTAXhv1bwpw+xGq+tWo5KhN53pF3lmlpaV/zTdV7
 B+NXlXmBdfo6eQK5JzjBF6ijeloccOrOOKZCvMQnFy70wsRTQkRcaZh2fffMtzACTInw
 zylX+XJcUce7n1fqXD13/T1qNepFiVa8ypkXTjuqKJ2HVcDbOB/LkIxHK8dGXwtdTyan
 qATR4COjvixu3OVNSrTFEPyN+MzLM4fY/LrXICBwhfsH7hjr01SN1jIFajnwWWM9sNgl
 WcfdpWkWP6ik9i0E4NJClVJHZDIyDVEhVJG/LN8wIFSwRPM2DEjgMoNVbOWLGNEtCm5j
 tEVQ==
X-Gm-Message-State: APjAAAW4EWQJWiofq7xDO3rU1YFFofJ8AOqKzqZ4s8wuzsrRSlxrM8hO
 jG1DiyCR9xWTaFKKbK+nwa80o1CX+FgLir7QDS0=
X-Google-Smtp-Source: APXvYqw3NAv6jhKDpC/4WhzTN5GFtmL2xJchHFouvRcor/7bEOfpEafEI+w0OTpUDNvSPPHpgwpIsAgBr7KtEUuaFoo=
X-Received: by 2002:a9f:372a:: with SMTP id z39mr10221698uad.91.1557072864065; 
 Sun, 05 May 2019 09:14:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:644b:0:0:0:0:0 with HTTP;
 Sun, 5 May 2019 09:14:23 -0700 (PDT)
Received: by 2002:ab0:644b:0:0:0:0:0 with HTTP;
 Sun, 5 May 2019 09:14:23 -0700 (PDT)
In-Reply-To: <BA29EA88-EE05-41A1-BDC1-4206E31AA443@gmail.com>
References: <CADE5U-e_T08OHwSMWA1bf=ZowbfBnG8OAtY+Sk+A8ZgeEsX_Lg@mail.gmail.com>
 <CADE5U-f05s5shd-JBRLrYKZYcjitk4rJ2VUhH-LgJ4GWgFbc7Q@mail.gmail.com>
 <CADE5U-dEzm-uRTfx1oK4KPYJOcP-uZzfSjs=V9hdLWwnU9Mb8w@mail.gmail.com>
 <CADE5U-eMh9P6oeWaYddeaVpBgWw+hGwrsKZsW1dr+TF7q9AYzg@mail.gmail.com>
 <CADE5U-f5C+KmqQ5AmDDk0PW163e4Zoe26G2mDLv0HZUEkiTUuw@mail.gmail.com>
 <CADE5U-d6qmUvvKz7e5NUdscuFntTXY5CTQnOp=Su5VZ3wnmatA@mail.gmail.com>
 <CADE5U-cHS-Q-2j3U9jfjNaanFG2YDvBWPyGQxTW81HESSbWyxg@mail.gmail.com>
 <5CCF00B6.7010407@gmail.com>
 <CADE5U-eKkLJhyWBhkoqq96iTMcFo2Z_NE7eUi4y8FyWocPaP4A@mail.gmail.com>
 <BA29EA88-EE05-41A1-BDC1-4206E31AA443@gmail.com>
Date: Sun, 5 May 2019 23:14:23 +0700
Message-ID: <CADE5U-emV9YVgecLrZRR54S8407hP7xMaFA5t+uf-ARGeDVmAQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B210 mini I/Q imbalance?
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
From: franz kurniawan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: franz kurniawan <digitalturtle2010@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6057903198472976321=="
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

--===============6057903198472976321==
Content-Type: multipart/alternative; boundary="000000000000f3bd110588264677"

--000000000000f3bd110588264677
Content-Type: text/plain; charset="UTF-8"

I set the generator at -20db and b200 gain at 50..
I check that there is no cutoff at the usrp output and the input to AM
demod block..

Below are the setting of uhd block in gnuradio
Samp rate 500k
Output type float32
Sync PC clock
Clock rate 10 Mhz external
Freq 121MHz
Gain 50
Ch0 Bandwidth 200000


Thank you

On May 5, 2019 11:05 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote:

> What output level for the generator? What gain setting on the b205?
>
>
> Sent from my iPhone
>
> On May 5, 2019, at 11:58 AM, franz kurniawan <digitalturtle2010@gmail.com>
> wrote:
>
> So, i try to make AM receiver..
> And the resulted demodulated audio was distorted from its original signal..
> So, at this experiment i used signal generator to make AM with sine wave
> modulated signal..
> I expect to get pure sine wave signal after AM demod process..
> However, the sine wave is distorted as attached picture
>
> I compared with another brand SDR and can get my expected signal..
> So i guess there is some problem with the b210mini
>
> Thank you
>
>
>
> On May 5, 2019 10:28 PM, "Marcus D. Leech via USRP-users" <
> usrp-users@lists.ettus.com> wrote:
>
> On 05/05/2019 10:53 AM, franz kurniawan via USRP-users wrote:
>
>> Dear USRP users,
>>
>> I used b210mini and encounter I/Q imbalance as below picture..
>> As a result, the analog signal demodulation was distorted and result a
>> crappy sound..
>> I
>> Is there any workaround regarding this issue?
>>
>> Thank you
>>
>>
>> Not sure what you mean.  The I/Q seem to be about 90deg out of phase wrt
> one another, which is exactly what you'd expect.
>
> Could you describe what it is you're trying to do?  Something with an
> audio demodulator?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> <IMG-20190505-WA0001.jpg>
>
>

--000000000000f3bd110588264677
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I set the generator at -20db and b200 gain at 50..<div di=
r=3D"auto">I check that there is no cutoff at the usrp output and the input=
 to AM demod block..</div><div dir=3D"auto"><br></div><div dir=3D"auto">Bel=
ow are the setting of uhd block in gnuradio</div><div dir=3D"auto">Samp rat=
e 500k</div><div dir=3D"auto">Output type float32</div><div dir=3D"auto">Sy=
nc PC clock</div><div dir=3D"auto">Clock rate 10 Mhz external</div><div dir=
=3D"auto">Freq 121MHz</div><div dir=3D"auto">Gain 50</div><div dir=3D"auto"=
>Ch0 Bandwidth 200000</div><div dir=3D"auto"><br></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Thank you</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On May 5, 2019 11:05 PM, &quot;Marcus D Leech=
&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"auto">What output level for the generator? What gain setting on t=
he b205?<div><br><br><div id=3D"m_-8860653040052543334AppleMailSignature" d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On May 5, 2019, at=
 11:58 AM, franz kurniawan &lt;<a href=3D"mailto:digitalturtle2010@gmail.co=
m" target=3D"_blank">digitalturtle2010@gmail.com</a>&gt; wrote:<br><br></di=
v><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"auto"><div>So, i t=
ry to make AM receiver..</div><div dir=3D"auto">And the resulted demodulate=
d audio was distorted from its original signal..</div><div dir=3D"auto">So,=
 at this experiment i used signal generator to make AM with sine wave modul=
ated signal..</div><div dir=3D"auto">I expect to get pure sine wave signal =
after AM demod process..</div><div dir=3D"auto">However, the sine wave is d=
istorted as attached picture</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">I compared with another brand SDR and can get my expected signal..</di=
v><div dir=3D"auto">So i guess there is some problem with the b210mini</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto"><br><div class=3D"gmail_extra" dir=3D"auto=
"><br><div class=3D"gmail_quote">On May 5, 2019 10:28 PM, &quot;Marcus D. L=
eech via USRP-users&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br type=3D"att=
ribution"><blockquote style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div>On 05/05/2019 10:53 AM, franz kurniawan via USRP-us=
ers wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Dear USRP users,<br>
<br>
I used b210mini and encounter I/Q imbalance as below picture..<br>
As a result, the analog signal demodulation was distorted and result a crap=
py sound..<br>
I<br>
Is there any workaround regarding this issue?<br>
<br>
Thank you<br>
<br>
<br>
</blockquote></div>
Not sure what you mean.=C2=A0 The I/Q seem to be about 90deg out of phase w=
rt one another, which is exactly what you&#39;d expect.<br>
<br>
Could you describe what it is you&#39;re trying to do?=C2=A0 Something with=
 an audio demodulator?<br>
<br>
<br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman<wbr=
>/listinfo/usrp-users_lists.ett<wbr>us.com</a><br>
</blockquote></div><br></div></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr">&lt;IMG-20190=
505-WA0001.jpg&gt;</div></blockquote></div></div></blockquote></div></div>

--000000000000f3bd110588264677--


--===============6057903198472976321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6057903198472976321==--

