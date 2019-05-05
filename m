Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8D4141F9
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 20:52:38 +0200 (CEST)
Received: from [::1] (port=51336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNMFU-0003qS-GS; Sun, 05 May 2019 14:52:32 -0400
Received: from mail-ua1-f46.google.com ([209.85.222.46]:46620)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <digitalturtle2010@gmail.com>)
 id 1hNMEw-0003kR-90
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 14:52:28 -0400
Received: by mail-ua1-f46.google.com with SMTP id n23so3858772uap.13
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 11:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=BEEFEoHZMWEu9eOBrz4eK2z4dskrLdgnfVf1aAnPWfs=;
 b=kVJxUMjqfOUxIBPgx/anW4JzPR2yKFDixrSWDDf66VUcTiah2C7B4MG/uVx4CUFf/8
 7XAoSv+MuVG+Dr0MRXsWJMuNVcVpBiBo8ci2csX+5gauZql4us+bVMZu+5qkzeZyZivV
 gQT3ntnpNYpeDuiXkz9AUglmu+DKNDXdfkxB0PTb8CxS8Uspj5/HJ/JFUA5VMscQX4xx
 lBpyIcNkY278kZmH6SJM9TIEBFsJME08yUpmMaDSEnTFZj7jYvivszoNOHHWAzsLoGQa
 4dKa3URkfe1wv+0AU8U7zsxk/uyDqanErzywDYRih8r8KUkQobcmJWZJcEO0KKPf57bI
 35yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=BEEFEoHZMWEu9eOBrz4eK2z4dskrLdgnfVf1aAnPWfs=;
 b=mY9wPBvSFeV3QysDTYGfne+ite0V8ukxFKCQeCdQEcHAy2L3Ner3t51FATBe0qEu7y
 fjwdGzMvIaYiiZF3vWz4eO+UrL7lithbvK6V8Nvb7WkMc7nKQyDsTx/FLb3q+EyUVAJt
 Utt1PVHmQbkV9hJkqNXjM13pMSuia8pjH+Fkw813dzSDX2fp6Y8e5+r/dLU1KDBNjdwf
 CfY1K+4ZypuwiW7YmlIotvE7je0uxHLKaHpJZRqCcmpUTlp4GX12v004GrsIgfOCl1iD
 2hlWA8zlvj7vGaPmDE6JEjQbRnllw00VZ1zPOf7y4x0ws4Jed+9sElLZWR0ttZve4iBU
 1s7A==
X-Gm-Message-State: APjAAAW2ARsBciupfdj/8jXQxiNdsCMCNqjaacTZ31e8F/W3WRPXlpeD
 ExNSF+wQVbFHnhHZkN5SkvqB+ir8xhsO+d9gyos=
X-Google-Smtp-Source: APXvYqyZ26XfFTJi2IFaeENkmy7IHD5mkAPAepXn7wgB6sCoqmXlGzQTlhiZH343FjHEiciKKpXWRWLPVAHF9ETWcPo=
X-Received: by 2002:ab0:130b:: with SMTP id g11mr10955652uae.74.1557082277650; 
 Sun, 05 May 2019 11:51:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:644b:0:0:0:0:0 with HTTP;
 Sun, 5 May 2019 11:51:17 -0700 (PDT)
Received: by 2002:ab0:644b:0:0:0:0:0 with HTTP;
 Sun, 5 May 2019 11:51:17 -0700 (PDT)
In-Reply-To: <CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com>
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
 <CADE5U-emV9YVgecLrZRR54S8407hP7xMaFA5t+uf-ARGeDVmAQ@mail.gmail.com>
 <5AEC47DB-1CD7-43C1-A284-885D9A6B40A9@gmail.com>
 <CADE5U-e2BZR_v8-e0nvcOkYof-YOT2vVqQxLPFZCFC0g=bHTLA@mail.gmail.com>
 <CADE5U-fgECvK4tc_QRwRin12x+F3MNWAh1rABWMa-z8q8=UYsQ@mail.gmail.com>
 <CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com>
Date: Mon, 6 May 2019 01:51:17 +0700
Message-ID: <CADE5U-e63Lwe-rSQq8AOLjbmFyyi0LJjeg88yAxcLOZq9W0LuQ@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2038516231262259936=="
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

--===============2038516231262259936==
Content-Type: multipart/alternative; boundary="0000000000000ba4ca0588287859"

--0000000000000ba4ca0588287859
Content-Type: text/plain; charset="UTF-8"

Hi brian,

You are absolutely correct !
after i shifted 2Khz , i can get the expected signal..

In term of usrp sink (AM Tx), do you think that the same condition might
occurred?

Thank you



On May 6, 2019 12:12 AM, "Brian Padalino" <bpadalino@gmail.com> wrote:

Since it's AM, try shifting your center frequency by a little bit.

Extract the envelope the same way, though.

My thought is the DC cancellation circuitry in the 9361 is killing your AM
waveform, so use a low-IF approach instead.

Brian

On Sun, May 5, 2019 at 1:05 PM franz kurniawan via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I reduced to -40db, -50db and have the same result..
>
> I attached the pictures of b200mini vs other SDR with the same signal
> generator..
>
> I expect the same result with the 'other SDR' result..
> The IQ data of b200 is seems to be incorrect (imbalance? )
>
> I have tried the uhd of these version :
> v3.14.0.0-rc3 ,
> release_003_007_001,
> release_003_010_001_000
>
> But all have the same result..
>
> I tried to disable the set_auto_iq_balance to both false and true, but
> have no effect..
>
> Thank you
>
> On May 5, 2019 11:27 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote:
>
> -20dBM is loud. Try backing the generator down to -40dBm
>
>
> Sent from my iPhone
>
> On May 5, 2019, at 12:14 PM, franz kurniawan <digitalturtle2010@gmail.com>
> wrote:
>
> I set the generator at -20db and b200 gain at 50..
> I check that there is no cutoff at the usrp output and the input to AM
> demod block..
>
> Below are the setting of uhd block in gnuradio
> Samp rate 500k
> Output type float32
> Sync PC clock
> Clock rate 10 Mhz external
> Freq 121MHz
> Gain 50
> Ch0 Bandwidth 200000
>
>
> Thank you
>
> On May 5, 2019 11:05 PM, "Marcus D Leech" <patchvonbraun@gmail.com> wrote:
>
>> What output level for the generator? What gain setting on the b205?
>>
>>
>> Sent from my iPhone
>>
>> On May 5, 2019, at 11:58 AM, franz kurniawan <digitalturtle2010@gmail.com>
>> wrote:
>>
>> So, i try to make AM receiver..
>> And the resulted demodulated audio was distorted from its original
>> signal..
>> So, at this experiment i used signal generator to make AM with sine wave
>> modulated signal..
>> I expect to get pure sine wave signal after AM demod process..
>> However, the sine wave is distorted as attached picture
>>
>> I compared with another brand SDR and can get my expected signal..
>> So i guess there is some problem with the b210mini
>>
>> Thank you
>>
>>
>>
>> On May 5, 2019 10:28 PM, "Marcus D. Leech via USRP-users" <
>> usrp-users@lists.ettus.com> wrote:
>>
>> On 05/05/2019 10:53 AM, franz kurniawan via USRP-users wrote:
>>
>>> Dear USRP users,
>>>
>>> I used b210mini and encounter I/Q imbalance as below picture..
>>> As a result, the analog signal demodulation was distorted and result a
>>> crappy sound..
>>> I
>>> Is there any workaround regarding this issue?
>>>
>>> Thank you
>>>
>>>
>>> Not sure what you mean.  The I/Q seem to be about 90deg out of phase wrt
>> one another, which is exactly what you'd expect.
>>
>> Could you describe what it is you're trying to do?  Something with an
>> audio demodulator?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> <IMG-20190505-WA0001.jpg>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000ba4ca0588287859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi brian,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">You are absolutely correct !</div><div dir=3D"auto">after i shift=
ed 2Khz , i can get the expected signal..</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">In term of usrp sink (AM Tx), do you think that the same =
condition might occurred?</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Thank you</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br><div cla=
ss=3D"gmail_extra" dir=3D"auto"><br><div class=3D"gmail_quote">On May 6, 20=
19 12:12 AM, &quot;Brian Padalino&quot; &lt;<a href=3D"mailto:bpadalino@gma=
il.com">bpadalino@gmail.com</a>&gt; wrote:<br type=3D"attribution"><blockqu=
ote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">Since it&#39;s AM, try shifting your cent=
er frequency by a little bit.<div><br></div><div>Extract the envelope the s=
ame way, though.</div><div><br></div><div>My thought is the DC cancellation=
 circuitry in the 9361 is killing your AM waveform, so use a low-IF approac=
h instead.</div><font color=3D"#888888"><div><br></div><div>Brian</div></fo=
nt></div><div class=3D"elided-text"><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, May 5, 2019 at 1:05 PM franz kurniawa=
n via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">I reduced to -40db,=
 -50db and have the same result..<div dir=3D"auto"><br></div><div dir=3D"au=
to">I attached the pictures of b200mini vs other SDR with the same signal g=
enerator..</div><div dir=3D"auto"><br></div><div dir=3D"auto">I expect the =
same result with the &#39;other SDR&#39; result..</div><div dir=3D"auto">Th=
e IQ data of b200 is seems to be incorrect (imbalance? )</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">I have tried the uhd of these version :</d=
iv><div dir=3D"auto">v3.14.0.0-rc3 ,=C2=A0</div><div dir=3D"auto">release_0=
03_007_001,=C2=A0</div><div dir=3D"auto">release_003_010_001_000</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">But all have the same result..</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">I tried to disable the set_=
auto_iq_balance to both false and true, but have no effect..</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Thank you</div></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On May 5, 2019 11:27 PM, &quot;Ma=
rcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br type=3D"attribution"><bl=
ockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto">-20dBM is loud. Try backing the =
generator down to -40dBm<div><br><br><div id=3D"m_-6603432633178987640gmail=
-m_1464258312546627213m_2029498226510055085AppleMailSignature" dir=3D"ltr">=
Sent from my iPhone</div><div><div dir=3D"ltr"><br>On May 5, 2019, at 12:14=
 PM, franz kurniawan &lt;<a href=3D"mailto:digitalturtle2010@gmail.com" tar=
get=3D"_blank">digitalturtle2010@gmail.com</a>&gt; wrote:<br><br></div><blo=
ckquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"auto">I set the generato=
r at -20db and b200 gain at 50..<div dir=3D"auto">I check that there is no =
cutoff at the usrp output and the input to AM demod block..</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Below are the setting of uhd block in=
 gnuradio</div><div dir=3D"auto">Samp rate 500k</div><div dir=3D"auto">Outp=
ut type float32</div><div dir=3D"auto">Sync PC clock</div><div dir=3D"auto"=
>Clock rate 10 Mhz external</div><div dir=3D"auto">Freq 121MHz</div><div di=
r=3D"auto">Gain 50</div><div dir=3D"auto">Ch0 Bandwidth 200000</div><div di=
r=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank yo=
u</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On M=
ay 5, 2019 11:05 PM, &quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote=
:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"auto">What output level for the generator? What gain setting o=
n the b205?<div><br><br><div id=3D"m_-6603432633178987640gmail-m_1464258312=
546627213m_2029498226510055085m_-8860653040052543334AppleMailSignature" dir=
=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br>On May 5, 2019, at 1=
1:58 AM, franz kurniawan &lt;<a href=3D"mailto:digitalturtle2010@gmail.com"=
 target=3D"_blank">digitalturtle2010@gmail.com</a>&gt; wrote:<br><br></div>=
<blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"auto"><div>So, i try=
 to make AM receiver..</div><div dir=3D"auto">And the resulted demodulated =
audio was distorted from its original signal..</div><div dir=3D"auto">So, a=
t this experiment i used signal generator to make AM with sine wave modulat=
ed signal..</div><div dir=3D"auto">I expect to get pure sine wave signal af=
ter AM demod process..</div><div dir=3D"auto">However, the sine wave is dis=
torted as attached picture</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">I compared with another brand SDR and can get my expected signal..</div>=
<div dir=3D"auto">So i guess there is some problem with the b210mini</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Thank you</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto"><br><div class=3D"gmail_extra" dir=3D"auto">=
<br><div class=3D"gmail_quote">On May 5, 2019 10:28 PM, &quot;Marcus D. Lee=
ch via USRP-users&quot; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br type=3D"attri=
bution"><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div>On 05/05/2019 10:53 AM, franz kurn=
iawan via USRP-users wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
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
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/<wbr>mailma=
n/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
</blockquote></div><br></div></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr">&lt;IMG-20190=
505-WA0001.jpg&gt;</div></blockquote></div></div></blockquote></div></div>
</div></blockquote></div></div></div></blockquote></div><br></div>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/<wbr>mailma=
n/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><br></div></div></div>

--0000000000000ba4ca0588287859--


--===============2038516231262259936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2038516231262259936==--

