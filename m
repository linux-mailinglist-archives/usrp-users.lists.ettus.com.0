Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0550235EB8D
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 05:47:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40530384933
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 23:47:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="e6pANuSa";
	dkim-atps=neutral
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B51D138436F
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 23:46:55 -0400 (EDT)
Received: by mail-vk1-f176.google.com with SMTP id p206so1579887vkd.4
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 20:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vEGAwaMoZVDhsYpO8o8klG9ABALzct8u3zKnfQN27CA=;
        b=e6pANuSaaViTPbO57AxKH1/KtJXSvenAbSKijsWiMT/49UU1nNjYgelD88D0U2aG/d
         aF3aHj4ymLwsqmLHd1jA3IS5O/5Mgl4Ky5BxRoRoFQRy4cecw3RgjX8B1KpVzIwjzfb8
         9VJc9rqZSwwRJtVYOpWnvJ2WndtjB4u5aNx3o6TxoUok64YHbuH6XcWkVUnxaEHR5Y/r
         rzaiZCMH1QKb7BfExkW6LPQU+v9+G+1NmwnmJ5+7T4LszfyQ1Sq5RgjHt/rDtmVSiL3P
         L53pVt9tSFIomaZU3YX846gcFXcKbxkqOQqyIBl8FS44+Adepg/DsI/0te/JR1ExKWLb
         pmMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vEGAwaMoZVDhsYpO8o8klG9ABALzct8u3zKnfQN27CA=;
        b=MCGQKp1FKs/6iCoeGu/5PQhDp5motKUKBp4FRIktKuQn7e1TJvENTUNKzpZ0j6UaD7
         JN+ZX08U+5QAqYrbyWSbbDKJXfkiZNevKvJTBqvmq+nbreh4wubW9XpilQEX58vYOCaq
         tlgs8hYUB/MbTqb8+DvNP4VTDbe2lXoQqRaKpjnAkOtzpK+kjaAzFv+H8p+23vdrlVFV
         Zy1x28M1y2w882a7kEAU1oX3gzWx0rgJcD4HVouJF572CgjXmeodWdlund5fJsf9nW6t
         9+DSncEmrJrTHmaPtXz2g2ey2S49pwISRH9OxrgUppKWe4N1D+bY6BSywQP3TbA1t2Oc
         YokA==
X-Gm-Message-State: AOAM531n9EZRtN5+2T0tvHrgS1/+j0ZYodFs9StlkdY2AuVarqJQ57Yv
	esIoNcjk9Cfnl+F2orqXvFhdOFktFu13qWPYd1OI7A==
X-Google-Smtp-Source: ABdhPJwEpBpHQof2nAZ5mMsiNdx9lfLXZwnfJQeYyUeIOHQGZnC7C/npZ8EzRs940laq9C3+ey2ClxsvX8G3pblTV3w=
X-Received: by 2002:a1f:1e01:: with SMTP id e1mr24968779vke.8.1618372015061;
 Tue, 13 Apr 2021 20:46:55 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8Uu4aAWWfPOEWXE3YRRYrsd-U5dGGUecY=sJQAXc9tD5g@mail.gmail.com>
 <87BD99F9-C3E1-4F43-91AD-C3F034526CA3@gmail.com> <CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmail.com>
In-Reply-To: <CALNMZ8VKM7cjRnAARFEo+1bnmNq7pZPFZ22wPbQ_g7_xLdLMAg@mail.gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Wed, 14 Apr 2021 13:46:44 +1000
Message-ID: <CALNMZ8UPCZhZAeDX+0OzjB3sETEmCyLCFto6+RbSe1XAeO_Wpw@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: PYOLF5AOKKUOUBXSYCVRX36RPZF6ILSD
X-Message-ID-Hash: PYOLF5AOKKUOUBXSYCVRX36RPZF6ILSD
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contradictory overflow messages when recording rx samples with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PYOLF5AOKKUOUBXSYCVRX36RPZF6ILSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3094088070421265880=="

--===============3094088070421265880==
Content-Type: multipart/alternative; boundary="000000000000128f3205bfe69938"

--000000000000128f3205bfe69938
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Further to my original post, it appears that it is not just the number of
dropped samples that is being missed by the metadata object.

As an experiment, I modified the benchmark_rate.py example so that the
metadata error_code flag is printed out every time the recv() method is
called:

while num_rx_samps < target_num_samples:
    try:
        samps =3D rx_streamer.recv(recv_buffer, metadata)
*        print(metadata.error_code)*
        if samps:
            etc

When I run the script, a typical output looks like this:

Orx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none
Orx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none
Orx_metadata_error_code.none
rx_metadata_error_code.none
rx_metadata_error_code.none

As you can see, the Fastpath logger is printing 'O' to the console, but the
metadata object reports no errors.

Looks like a bug to me!  :)

Brendan.




On Wed, Apr 14, 2021 at 1:23 PM Brendan Horsfield <
brendan.horsfield@vectalabs.com> wrote:

> Fair enough.  To ensure that this problem is logged with the Ettus
> engineering team, is there an official mailing list or email address that=
 I
> should report this bug to?
>
> On Wed, Apr 14, 2021 at 12:02 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> That just sounds like a bug. The Python API is still considered
>> experimental.
>>
>> Sent from my iPhone
>>
>> On Apr 13, 2021, at 9:22 PM, Brendan Horsfield <
>> brendan.horsfield@vectalabs.com> wrote:
>>
>> =EF=BB=BF
>> Hi Marcus,
>>
>> I have run some comparison tests between the C++ and Python versions of
>> "benchmark_rate", using a high sampling rate in order to force some
>> overruns.
>>
>> It appears that both versions are detecting & reporting overrun events
>> correctly.  However, when it comes to the number of dropped samples, the
>> Python version always returns zero for the number of dropped samples.
>>
>> Do you have any idea why this is the case?  Is the resolution of the
>> timer less fine-grained in the Python implementation perhaps?
>>
>> Thanks,
>> Brendan.
>>
>>
>>
>>
>> On Tue, Apr 13, 2021 at 11:05 PM Marcus D Leech <patchvonbraun@gmail.com=
>
>> wrote:
>>
>>>
>>>
>>> Sent from my iPhone
>>>
>>> On Apr 13, 2021, at 3:05 AM, brendan.horsfield@vectalabs.com wrote:
>>>
>>> =EF=BB=BF
>>>
>>> Hi All,
>>>
>>> I am using a Python script to capture a short burst of rx samples from
>>> my B210. The script is based heavily on the Ettus example
>>> =E2=80=9Cbenchmark_rate.py=E2=80=9D, with a couple of additional tweaks=
 I took from the
>>> Ettus GitHub repo (
>>> https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/usrp/m=
ulti_usrp.py
>>> ).
>>>
>>> In my script I am calling my rx sampling function repeatedly using a
>>> =E2=80=9Cfor" loop. Any errors that occur during sampling are stored in=
 a
>>> uhd.types.RXMetadata() object, just like in the original Ettus script.
>>>
>>> Here=E2=80=99s the strange part:
>>>
>>> While the script is running, the letter =E2=80=98O=E2=80=99 is printed =
on the screen
>>> about 50% of the time, which I believe is an overflow warning from the
>>> Fastpath logger. However, the number of errors being detected by the
>>> RXMetadata() object is almost zero. How can this be?
>>>
>>> Some questions:
>>>
>>>    -
>>>
>>>    How seriously should I take the Fastpath =E2=80=98O=E2=80=99 warning=
? What does it
>>>    actually mean? Does it mean that this burst of samples will be
>>>    corrupted/incomplete?
>>>
>>> It absolutely means that samples were lost.
>>>
>>> The metadata should include time stamps that will allow you to compute
>>> how much was lost.
>>>
>>>
>>>    -
>>>
>>>    Why is the RXMetadata object not returning an error every single
>>>    time that the Fastpath logger does?
>>>
>>> This I=E2=80=99m not certain of.
>>>
>>> Thanks,
>>>
>>> Brendan.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>

--000000000000128f3205bfe69938
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Further to my original post, it appears that it is not jus=
t the number of dropped samples that is being missed by the metadata object=
.<div><br></div><div>As an experiment, I modified the benchmark_rate.py exa=
mple so that the metadata error_code flag is printed out every time the rec=
v() method is called:</div><div><br></div><div><font face=3D"monospace">whi=
le num_rx_samps &lt; target_num_samples:<br>=C2=A0 =C2=A0 try:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 samps =3D rx_streamer.recv(recv_buffer, metadata)<br><=
b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 print(metadata.error_code)</b><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if samps:</font></div><div><font face=3D"monospace">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 etc</font><br><br></div><div>When I =
run the script, a typical output looks=C2=A0like this:</div><div><br></div>=
<div><font face=3D"monospace">Orx_metadata_error_code.none<br>rx_metadata_e=
rror_code.none<br>rx_metadata_error_code.none<br>rx_metadata_error_code.non=
e<br>rx_metadata_error_code.none<br>Orx_metadata_error_code.none<br>rx_meta=
data_error_code.none<br>rx_metadata_error_code.none<br>rx_metadata_error_co=
de.none<br>rx_metadata_error_code.none<br>Orx_metadata_error_code.none<br>r=
x_metadata_error_code.none<br>rx_metadata_error_code.none</font><br></div><=
div><br></div><div>As you can see, the Fastpath logger is printing &#39;O&#=
39; to the console, but the metadata object reports no errors.=C2=A0=C2=A0<=
/div><div><br></div><div>Looks like a bug to me!=C2=A0 :)</div><div><br></d=
iv><div>Brendan.</div><div><br></div><div><br></div><div><br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
Apr 14, 2021 at 1:23 PM Brendan Horsfield &lt;<a href=3D"mailto:brendan.hor=
sfield@vectalabs.com">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Fair =
enough.=C2=A0 To ensure that this problem is logged with=C2=A0the Ettus eng=
ineering team, is there an official mailing list or email address that I sh=
ould report this bug to?=C2=A0</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Apr 14, 2021 at 12:02 PM Marcus D Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"auto">That just sounds like a bug. The Python A=
PI is still considered experimental.=C2=A0<br><br><div dir=3D"ltr">Sent fro=
m my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 13, =
2021, at 9:22 PM, Brendan Horsfield &lt;<a href=3D"mailto:brendan.horsfield=
@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs.com</a>&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>I have run some com=
parison=C2=A0tests between the C++ and Python versions of &quot;benchmark_r=
ate&quot;, using a high sampling rate in order to force some overruns.</div=
><div><br></div><div>It appears that both versions are detecting &amp; repo=
rting overrun events correctly.=C2=A0 However, when it comes to the number =
of dropped samples, the Python version always returns zero for the number o=
f dropped samples.</div><div><br></div><div>Do you have=C2=A0any idea why t=
his is the case?=C2=A0 Is the resolution of the timer less fine-grained in =
the Python implementation perhaps?</div><div><br></div><div>Thanks,</div><d=
iv>Brendan.</div><div><br></div><div><br></div><div>=C2=A0=C2=A0</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Apr 13, 2021 at 11:05 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bloc=
kquote type=3D"cite">On Apr 13, 2021, at 3:05 AM, <a href=3D"mailto:brendan=
.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs.com=
</a> wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<p>Hi All,</p><p>I am using a Python script to capture a sho=
rt burst of rx samples from my B210.  The script is based heavily on the Et=
tus example =E2=80=9Cbenchmark_rate.py=E2=80=9D, with a couple of additiona=
l tweaks I took from the Ettus GitHub repo (<a href=3D"https://github.com/E=
ttusResearch/uhd/blob/master/host/python/uhd/usrp/multi_usrp.py" target=3D"=
_blank">https://github.com/EttusResearch/uhd/blob/master/host/python/uhd/us=
rp/multi_usrp.py</a>).</p><p>In my script I am calling my rx sampling funct=
ion repeatedly using a =E2=80=9Cfor&quot; loop.  Any errors that occur duri=
ng sampling are stored in a uhd.types.RXMetadata() object, just like in the=
 original Ettus script.   </p><p>Here=E2=80=99s the strange part:</p><p>Whi=
le the script is running, the letter =E2=80=98O=E2=80=99 is printed on the =
screen about 50% of the time, which I believe is an overflow warning from t=
he Fastpath logger.  However, the number of errors being detected by the RX=
Metadata() object is almost zero.  How can this be?</p><p>Some questions:</=
p><ul><li><p>How seriously should I take the Fastpath =E2=80=98O=E2=80=99 w=
arning?  What does it actually mean?  Does it mean that this burst of sampl=
es will be corrupted/incomplete?</p></li></ul></div></blockquote>It absolut=
ely means that samples were lost.=C2=A0<div><br></div><div>The metadata sho=
uld include time stamps that will allow you to compute how much was lost.=
=C2=A0</div><div><br></div><div><blockquote type=3D"cite"><div dir=3D"ltr">=
<ul><li><p>Why is the RXMetadata object not returning an error every single=
 time that the Fastpath logger does? </p></li></ul></div></blockquote>This =
I=E2=80=99m not certain of.=C2=A0<br><blockquote type=3D"cite"><div dir=3D"=
ltr"><p>Thanks, </p><p>Brendan.</p>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>
</div></blockquote></div></blockquote></div>
</blockquote></div>

--000000000000128f3205bfe69938--

--===============3094088070421265880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3094088070421265880==--
