Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA221216100
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jul 2020 23:37:34 +0200 (CEST)
Received: from [::1] (port=51046 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jsYnm-0005GE-VZ; Mon, 06 Jul 2020 17:37:26 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:41035)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jsYni-00059a-Va
 for usrp-users@lists.ettus.com; Mon, 06 Jul 2020 17:37:23 -0400
Received: by mail-ot1-f44.google.com with SMTP id a21so9502037otq.8
 for <usrp-users@lists.ettus.com>; Mon, 06 Jul 2020 14:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qU9+ZLvWM3k7EupwJtB9S8pK90ClXjaV7CgagmuFYH4=;
 b=TRidz3jX3uJekRZHmP2AouxbMvffBlW4ML5WpFaxCfYBkERPHMyU1vZW/bWOyzBwuU
 gJDc42lIPMizGLUqXodlFCqc54wv/hz89asWHXfQKbGby6x3Mh/rDjaQpXpQY5spZE20
 YOEOa/Bf0DUR6hCcWNFXYmHrDijTJphzGnCY2kHdwLWzNak/w6WKqmxkGsS1qGlZfcu9
 qgOflKLFsfUSmqXUkLmoUzZXN+pcUV2GM2siTCCH3BvJ0iy77skaguhcMggiA8fP9z13
 dsCk+We/4FaQ3r7A6VYVzl19kZdiav/jH5wzEByrLNSIbnM5oQfSbsPG4qFVC9IqSlP6
 8LKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qU9+ZLvWM3k7EupwJtB9S8pK90ClXjaV7CgagmuFYH4=;
 b=c25vD0TcqMVv2+kXTDNMLGHaoPnR9g84cb+l4CCZRiMCGTs8njtFE+xZM+v0//4Mup
 YEoqPsuDJHjQo13EkN6J6+JfjwW/1TVbaUQjnw30/1/Be2nlOMWN5hQ+nt3R0c1v7Bg9
 e00BHtPqIauMhWLXoLrjOtbZ8lwZLwhtNW4ne6aw2EYVhEqnM53wzfqOO8RaTrEWPlk0
 HWETzRlBC1hUAYOGC/nEz6kLDSJH5rt3rnhPH0YBd5YlDPh46tTk9CwxX/N7eM6lxJmv
 MLjuBDtM3VYo19acWzFnpiivIu6shx654PYvGM9AEt+4FVbMnDL6l8bablbZ4loYbGmt
 AqOg==
X-Gm-Message-State: AOAM531nEZATnwD778rz419I5vXzjQBer7/vGK9UDHS9vRZmPldI8pWB
 a+Dl7Uy2LKsRh064BpT4Yf8+dVAFLC0PflyWldQ39TQ/V40=
X-Google-Smtp-Source: ABdhPJyDQZhdCmpedSuckCD99CH/K2qwHfUwGneVo+XVV5KY043vnYmnYP0aiTz+5jQ221jB5XJktwywt6KBgZ4CYQw=
X-Received: by 2002:a05:6830:1c6e:: with SMTP id
 s14mr38140106otg.58.1594071402022; 
 Mon, 06 Jul 2020 14:36:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
 <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
In-Reply-To: <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
Date: Mon, 6 Jul 2020 17:36:30 -0400
Message-ID: <CAB__hTRBpx_g4jZZKSt4oz4Lb_LMbbxjySWRu2-SOJ9Lu04fQQ@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="000000000000aa800e05a9ccabe6"
Subject: Re: [USRP-users] using 'replay' block with 'duc'
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

--000000000000aa800e05a9ccabe6
Content-Type: multipart/alternative; boundary="000000000000aa800b05a9ccabe4"

--000000000000aa800b05a9ccabe4
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
I am still not able to get the attached example to work.  As indicated in
my original email, I modified replay_samples_from_file to add a DUC block
in between the Replay and Radio blocks and also added a loop to provide
repeated start/stop of streaming.  It works fine the first time but then
produces lots of "L" the subsequent times.  I removed the call to
play_halt() as you suggested.  I noticed in UHD that there were some replay
block fixes but I'm not sure if all your intended fixes have made it or
not.  I am using the latest UHD (hash 5a9f9ed9).

Here is the exact command line I used (I also attached the data file that
is being replayed - 250 samples long), but the file is not important.
$ replay_samples_from_file --file
Documents/waveforms/mtone_100_0p8_0_le.bin --freq 2450e6
Rob

On Fri, May 1, 2020 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Rob,
>
> I wanted to give you a quick update. I was able to reproduce the issue you
> found. There were two problems.
>
> First, the example you shared calls play_halt() for the replay block each
> time replay is stopped. This basically stops it as soon as possible, even
> if that means it can't send a final packet with EOB. The DUC needs the EOB
> to start/stop cleanly or else the timestamps the DUC generates aren't
> correct when the next set of data comes through.
>
> The second problem I found is part of some known issues that are already
> fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know there
> was a lot of interest in the Replay block in 3.15. So once these fixes
> appear, you should be able to remove the call the play_halt() and the
> example will work as expected.
>
> Thanks,
>
> Wade
>
> On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>>
>> Great. I forgot to mention that I was using an n310.
>>
>> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Hi Rob,
>>>
>>> Thanks for the example! I'd take a look to see if I can reproduce the
>>> issue and figure out what's going on. I've been working recently on the
>>> Replay block, so I'm very interested to understand what's going on.
>>>
>>> Thanks,
>>>
>>> Wade
>>>
>>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> I am having an issue with UHD 3.15.LTS using the replay block.  When I
>>>> play out my previously stored samples the first time, everything works
>>>> fine.  But after stopping the first time, if I try to start playing out
>>>> again, I get a whole bunch of 'Lates' and no RF output.
>>>>
>>>> In order to duplicate the problem with an Ettus example, I modified
>>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>>
>>>> Next, I further modified the example to place a DUC block in between
>>>> the Replay block and the Radio.  Now it duplicates the issue perfectly
>>>> (modified example attached).
>>>>
>>>> So, perhaps I need to clear the DUC in some way when stopping the
>>>> streaming??  But if so, I'm not really sure how to do so.
>>>>
>>>> Thanks.
>>>> Rob
>>>>
>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000aa800b05a9ccabe4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Wade,<div>I am still not able to get t=
he attached example to work.=C2=A0 As indicated in my original email, I mod=
ified replay_samples_from_file to add a DUC block in between the Replay and=
 Radio blocks and also=C2=A0added a loop to provide repeated start/stop of =
streaming.=C2=A0 It works fine the first time but then produces lots of &qu=
ot;L&quot; the subsequent times.=C2=A0 I removed the call to play_halt() as=
 you suggested.=C2=A0 I noticed in UHD that there were some replay block fi=
xes but I&#39;m not sure if all your intended fixes have made it or not.=C2=
=A0 I am using the latest UHD (hash=C2=A05a9f9ed9).</div><div><br></div><di=
v>Here is the exact command line I used (I also attached the data file that=
 is being replayed - 250 samples long), but the file is not important.</div=
><div><font face=3D"monospace">$ replay_samples_from_file --file Documents/=
waveforms/mtone_100_0p8_0_le.bin --freq 2450e6</font><br></div><div>Rob</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, May 1, 2020 at 11:37 AM Wade Fife &lt;<a href=3D"mailto:wade.fife=
@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><b=
r></div><div>I wanted to give you a quick update. I was able to reproduce t=
he issue you found. There were two problems.</div><div><br></div><div>First=
, the example you shared calls play_halt() for the replay block each time r=
eplay is stopped. This basically stops it as soon as possible, even if that=
 means it can&#39;t send a final packet with EOB. The DUC needs the EOB to =
start/stop cleanly or else the timestamps the DUC generates aren&#39;t corr=
ect when the next set of data comes through.</div><div><br></div><div>The s=
econd problem I found is part of some known issues that are already fixed i=
n UHD 4.0. I&#39;m going to add these fixes to 3.15 since I know there was =
a lot of interest in the Replay block in 3.15. So once these fixes appear, =
you should be able to remove the call the play_halt() and the example will =
work as expected.<br></div><div><br></div><div>Thanks,</div><div><br></div>=
<div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler &lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br></div=
><div><div dir=3D"auto">Great. I forgot to mention that I was using an n310=
.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife &lt;<a href=3D"mailto:wad=
e.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Hi Rob,</div><div><br></div><div>Thanks for the example! I&#39;d take a l=
ook to see if I can reproduce the issue and figure out what&#39;s going on.=
 I&#39;ve been working recently on the Replay block, so I&#39;m very intere=
sted to understand what&#39;s going on.<br></div><div><br></div><div>Thanks=
,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quot=
e"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"></blockquote></div><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
,<br><div>I am having an issue with UHD 3.15.LTS using the replay block.=C2=
=A0 When I play out my previously stored samples the first time, everything=
 works fine.=C2=A0 But after stopping the first time, if I try to start pla=
ying out again, I get a whole bunch of &#39;Lates&#39; and no RF output.</d=
iv><div><br></div><div>In order to duplicate the problem with an Ettus exam=
ple, I modified &#39;replay_samples_from_file&#39; to add a loop and comman=
d prompt so that the user could hit &lt;enter&gt; to start playing out whil=
e still using &lt;ctrl-c&gt; to stop.=C2=A0 Unfortunately for me, this work=
ed fine and did not show the problem.</div><div><br></div><div>Next, I furt=
her modified=C2=A0the example to place a DUC block in between the Replay bl=
ock and the Radio.=C2=A0 Now it duplicates the issue perfectly (modified ex=
ample attached).</div><div><br></div><div>So, perhaps I need to clear the D=
UC in some way when stopping the streaming??=C2=A0 But if so, I&#39;m not r=
eally sure how to do so.</div><div><br></div><div>Thanks.</div><div>Rob</di=
v></div></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000aa800b05a9ccabe4--
--000000000000aa800e05a9ccabe6
Content-Type: application/octet-stream; name="mtone_100_0p8_0_le.bin"
Content-Disposition: attachment; filename="mtone_100_0p8_0_le.bin"
Content-Transfer-Encoding: base64
Content-ID: <f_kcb0jatc0>
X-Attachment-Id: f_kcb0jatc0

AvoIGBD16CvbPYXL5B4HEWLLZi5d77PiRgB0A533OCMNDfpJpPAbSA3krfDB+Sjwg86v/O64uu54
5GPcm9T0x+jRGQ8u9cQnfuv8/YcAwQpFCTgP6STUGvBNywxx5rvmuNT7HcIoS0fqHf8WISUtCHkD
UR7c7g74RRDi6ajfky8y/xAtdyH3+5gC4BGBN1I2FB10JJDtBvnwHZMdiye/GWsswbp/KxjhGvpq
DpLfRPUl/lsW/yFNCjwolxXeDywzA8bH9V/FJPHh8woP+dZ5LEXv0UnX9KUunOgfLMYeDut/7mfC
ePViMmgi+Sixx7gPNuEaP38WTt4c7ujXAQKFLq4WVwQnDqMIAOXCHdjxUfbcPbH9z/p+8s/DrdFn
BkXPIwKK0FrbV9735bTq/gl48S03JAumNd85ceveOLLaNgbAENIO29s1+efCYdWZKgccIzPCAmgI
asM5FE79ZABmB1zsifzNEaHmThMT1vjUnCZk4ZASaQ1o4woHsgg274fabsbL1jcUmhuxQSkbDc2+
7PLq+dmWAqoW6cnvFLscXevpIT/9wQE65NAeKRjsB/BGRAPF7+TzN9haFN3BZClU1PTcEyv7ADoT
zQLZJdLJ/iymAwjjDvdIGf/Z4DnMAy35YSCR7XhA+/CCHafmrNzZF7/aF0b+Bfjn8AoY1CXCezQc
4fnunjSa0aMQTR26/4z8YwjI3PPyBrZcD+W38xtTDz8G2A99MVEDEkdGEYgbnSNlKww4GC7n8NIK
PNiCFAQCef8/9bv2yPAX2yzlELI1848ZRRlIKwXiPte1uBbiAenf2tP3h/yv4SQR8ge77x4WWCBt
0M4A8NKJ3gkEaP0g7n/Irsns4ozbcBL6BhDibeJ12EHmldM/RYHU6B7mBZbxbiC8CtsBpekB3rP1
xNdp6iLw1Mz9OTkKoTrcDh8M9vAHKYfTuxAvtikLW9FkF+HTOuHyFIERmT2ICp7NmN0H1084SPDK
HubAgemyIeQRGCj//XvRUump+9nxXfcAGz7iKA6vCSTCTwIxBYINMTxTLpn5uzDd/XYvpiSpIQka
TBUC9ogO08jc9FrKIcaPFCLHTiXK+UDvLvElJMsGGT2fKmfV+ePdzD79mPeWPMfrsgKc/5r4pBN3
AzPuXxmy7O0pCCtk2ZwecO2X8pgc9vhO98oQeSWSOTUpyetm5E++1+TzMkITDhUHJmr9VukXNhHr
ReOjFBfewQI//sYbMOHX5xT4ELm8/DsQHAzJJ6brIz6c1qwrDCPt1AX/xuwz/SfaLjYC01r8+Bzy
CLjmASYgxjT80waf328SiL8FD37iWRlUIyfoQSXpuQ==
--000000000000aa800e05a9ccabe6
Content-Type: text/x-c++src; charset="US-ASCII"; name="replay_samples_from_file.cpp"
Content-Disposition: attachment; filename="replay_samples_from_file.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kcb0jsfx1>
X-Attachment-Id: f_kcb0jsfx1

Ly8KLy8gQ29weXJpZ2h0IDIwMTggRXR0dXMgUmVzZWFyY2gsIEEgTmF0aW9uYWwgSW5zdHJ1bWVu
dHMgQ29tcGFueQovLwovLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTMuMC1vci1sYXRl
cgovLwovLwovLyBEZXNjcmlwdGlvbjoKLy8KLy8gVGhpcyBleGFtcGxlIGRlbW9uc3RyYXRlcyB1
c2luZyB0aGUgUmVwbGF5IGJsb2NrIHRvIHJlcGxheSBkYXRhIGZyb20gYSBmaWxlLgovLyBJdCBz
dHJlYW1zIHRoZSBmaWxlIGRhdGEgdG8gdGhlIFJlcGxheSBibG9jaywgd2hlcmUgaXQgaXMgcmVj
b3JkZWQsIHRoZW4gaXQKLy8gaXMgcGxheWVkIGJhY2sgdG8gdGhlIHJhZGlvLgoKI2luY2x1ZGUg
PHVoZC9kZXZpY2UzLmhwcD4KI2luY2x1ZGUgPHVoZC9yZm5vYy9yYWRpb19jdHJsLmhwcD4KI2lu
Y2x1ZGUgPHVoZC9yZm5vYy9yZXBsYXlfYmxvY2tfY3RybC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRp
bHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUgPGJvb3N0L2Zvcm1hdC5ocHA+CiNpbmNsdWRlIDxi
b29zdC9wcm9ncmFtX29wdGlvbnMuaHBwPgojaW5jbHVkZSA8Y3NpZ25hbD4KI2luY2x1ZGUgPGZz
dHJlYW0+CiNpbmNsdWRlIDx0aHJlYWQ+CgoKbmFtZXNwYWNlIHBvID0gYm9vc3Q6OnByb2dyYW1f
b3B0aW9uczsKCnVzaW5nIHN0ZDo6Y291dDsKdXNpbmcgc3RkOjplbmRsOwoKCi8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8KCnN0YXRpYyB2b2xhdGlsZSBib29sIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IGZh
bHNlOwoKLy8gQ3RybCtDIGhhbmRsZXIKdm9pZCBzaWdfaW50X2hhbmRsZXIoaW50KQp7CiAgICBz
dG9wX3NpZ25hbF9jYWxsZWQgPSB0cnVlOwp9CgoKaW50IFVIRF9TQUZFX01BSU4oaW50IGFyZ2Ms
IGNoYXIqIGFyZ3ZbXSkKewogICAgLy8gV2UgdXNlIHNjMTYgaW4gdGhpcyBleGFtcGxlLCBidXQg
dGhlIHJlcGxheSBibG9jayBvbmx5IHVzZXMgNjQtYml0IHdvcmRzCiAgICAvLyBhbmQgaXMgbm90
IGF3YXJlIG9mIHRoZSBDUFUgb3Igd2lyZSBmb3JtYXQuCiAgICBzdGQ6OnN0cmluZyB3aXJlX2Zv
cm1hdCgic2MxNiIpOwogICAgc3RkOjpzdHJpbmcgY3B1X2Zvcm1hdCgic2MxNiIpOwoKICAgIC8v
IENvbnN0YW50cyByZWxhdGVkIHRvIHRoZSBSZXBsYXkgYmxvY2sKICAgIGNvbnN0IHNpemVfdCBy
ZXBsYXlfd29yZF9zaXplID0gODsgLy8gU2l6ZSBvZiB3b3JkcyB1c2VkIGJ5IHJlcGxheSBibG9j
awogICAgY29uc3Qgc2l6ZV90IGJ5dGVzX3Blcl9zYW1wbGUgPSA0OyAvLyBDb21wbGV4IHNpZ25l
ZCAxNi1iaXQgaXMgMzIgYml0cyBwZXIgc2FtcGxlCiAgICBjb25zdCBzaXplX3Qgc2FtcGxlc19w
ZXJfd29yZCA9IDI7IC8vIE51bWJlciBvZiBzYzE2IHNhbXBsZXMgcGVyIHdvcmQKICAgIGNvbnN0
IHNpemVfdCByZXBsYXlfc3BwID0gMjAwMDsgLy8gU0MxNiBTYW1wbGVzIHBlciBwYWNrZXQgZ2Vu
ZXJhdGVkIGJ5IFJlcGxheSBibG9jawoKCiAgICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAgIC8vIEhh
bmRsZSBjb21tYW5kIGxpbmUgb3B0aW9ucwoKICAgIHN0ZDo6c3RyaW5nIGFyZ3MsIHJhZGlvX2Fy
Z3MsIGZpbGUsIGFudCwgcmVmOwogICAgZG91YmxlIHJhdGUsIGZyZXEsIGdhaW4sIGJ3LCBzZWNv
bmRzX2luX2Z1dHVyZTsKICAgIHNpemVfdCByYWRpb19pZCwgcmFkaW9fY2hhbiwgcmVwbGF5X2lk
LCByZXBsYXlfY2hhbiwgbnNhbXBzOwoKICAgIHBvOjpvcHRpb25zX2Rlc2NyaXB0aW9uIGRlc2Mo
IkFsbG93ZWQgT3B0aW9ucyIpOwogICAgLy8gY2xhbmctZm9ybWF0IG9mZgogICAgZGVzYy5hZGRf
b3B0aW9ucygpCiAgICAgICAgKCJoZWxwIiwgImhlbHAgbWVzc2FnZSIpCiAgICAgICAgKCJhcmdz
IiwgcG86OnZhbHVlPHN0ZDo6c3RyaW5nPigmYXJncyktPmRlZmF1bHRfdmFsdWUoIiIpLCAibXVs
dGkgdWhkIGRldmljZSBhZGRyZXNzIGFyZ3MiKQogICAgICAgICgicmFkaW8taWQiLCBwbzo6dmFs
dWU8c2l6ZV90PigmcmFkaW9faWQpLT5kZWZhdWx0X3ZhbHVlKDApLCAicmFkaW8gYmxvY2sgdG8g
dXNlIChlLmcuLCAwIG9yIDEpLiIpCiAgICAgICAgKCJyYWRpby1jaGFuIiwgcG86OnZhbHVlPHNp
emVfdD4oJnJhZGlvX2NoYW4pLT5kZWZhdWx0X3ZhbHVlKDApLCAicmFkaW8gY2hhbm5lbCB0byB1
c2UiKQogICAgICAgICgicmFkaW8tYXJncyIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJnJhZGlv
X2FyZ3MpLCAicmFkaW8gYXJndW1lbnRzIikKICAgICAgICAoInJlcGxheS1pZCIsIHBvOjp2YWx1
ZTxzaXplX3Q+KCZyZXBsYXlfaWQpLT5kZWZhdWx0X3ZhbHVlKDApLCAicmVwbGF5IGJsb2NrIHRv
IHVzZSAoZS5nLiwgMCBvciAxKSIpCiAgICAgICAgKCJyZXBsYXktY2hhbiIsIHBvOjp2YWx1ZTxz
aXplX3Q+KCZyZXBsYXlfY2hhbiktPmRlZmF1bHRfdmFsdWUoMCksICJyZXBsYXkgY2hhbm5lbCB0
byB1c2UiKQogICAgICAgICgibnNhbXBzIiwgcG86OnZhbHVlPHNpemVfdD4oJm5zYW1wcyktPmRl
ZmF1bHRfdmFsdWUoMCksICJudW1iZXIgb2Ygc2FtcGxlcyB0byBwbGF5ICgwIGZvciBpbmZpbml0
ZSkiKQogICAgICAgICgiZmlsZSIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmZpbGUpLT5kZWZh
dWx0X3ZhbHVlKCJ1c3JwX3NhbXBsZXMuZGF0IiksICJuYW1lIG9mIHRoZSBmaWxlIHRvIHJlYWQg
YmluYXJ5IHNhbXBsZXMgZnJvbSIpCiAgICAgICAgKCJmcmVxIiwgcG86OnZhbHVlPGRvdWJsZT4o
JmZyZXEpLCAiUkYgY2VudGVyIGZyZXF1ZW5jeSBpbiBIeiIpCiAgICAgICAgKCJyYXRlIiwgcG86
OnZhbHVlPGRvdWJsZT4oJnJhdGUpLCAicmF0ZSBvZiByYWRpbyBibG9jayIpCiAgICAgICAgKCJn
YWluIiwgcG86OnZhbHVlPGRvdWJsZT4oJmdhaW4pLCAiZ2FpbiBmb3IgdGhlIFJGIGNoYWluIikK
ICAgICAgICAoImFudCIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJmFudCksICJhbnRlbm5hIHNl
bGVjdGlvbiIpCiAgICAgICAgKCJidyIsIHBvOjp2YWx1ZTxkb3VibGU+KCZidyksICJhbmFsb2cg
ZnJvbnQtZW5kIGZpbHRlciBiYW5kd2lkdGggaW4gSHoiKQogICAgICAgICgicmVmIiwgcG86OnZh
bHVlPHN0ZDo6c3RyaW5nPigmcmVmKS0+ZGVmYXVsdF92YWx1ZSgiaW50ZXJuYWwiKSwgInJlZmVy
ZW5jZSBzb3VyY2UgKGludGVybmFsLCBleHRlcm5hbCwgbWltbykiKQogICAgICAgICgic2VjcyIs
IHBvOjp2YWx1ZTxkb3VibGU+KCZzZWNvbmRzX2luX2Z1dHVyZSktPmRlZmF1bHRfdmFsdWUoMS41
KSwgIm51bWJlciBvZiBzZWNvbmRzIGluIHRoZSBmdXR1cmUgdG8gc3RhcnQgcmVwbGF5IikKICAg
IDsKICAgIC8vIGNsYW5nLWZvcm1hdCBvbgogICAgcG86OnZhcmlhYmxlc19tYXAgdm07CiAgICBw
bzo6c3RvcmUocG86OnBhcnNlX2NvbW1hbmRfbGluZShhcmdjLCBhcmd2LCBkZXNjKSwgdm0pOwog
ICAgcG86Om5vdGlmeSh2bSk7CgogICAgLy8gUHJpbnQgaGVscCBtZXNzYWdlCiAgICBpZiAodm0u
Y291bnQoImhlbHAiKSkgewogICAgICAgIGNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiVUhEL1JGTm9D
IFJlcGxheSBzYW1wbGVzIGZyb20gZmlsZSAlcyIpICUgZGVzYyA8PCBlbmRsOwogICAgICAgIGNv
dXQgPDwgIlRoaXMgYXBwbGljYXRpb24gdXNlcyB0aGUgUmVwbGF5IGJsb2NrIHRvIHBsYXliYWNr
IGRhdGEgZnJvbSBhIGZpbGUgdG8gIgogICAgICAgICAgICAgICAgImEgcmFkaW8iCiAgICAgICAg
ICAgICA8PCBlbmRsCiAgICAgICAgICAgICA8PCBlbmRsOwogICAgICAgIHJldHVybiBFWElUX0ZB
SUxVUkU7CiAgICB9CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwogICAgLy8gQ3JlYXRlIFVTUlAg
ZGV2aWNlIGFuZCBibG9jayBjb250cm9scwoKICAgIGNvdXQgPDwgIkNyZWF0aW5nIHRoZSBVU1JQ
IGRldmljZSB3aXRoOiAiIDw8IGFyZ3MgPDwgIi4gLiAuXG4iIDw8IGVuZGw7CiAgICB1aGQ6OmRl
dmljZTM6OnNwdHIgdXNycCA9IHVoZDo6ZGV2aWNlMzo6bWFrZShhcmdzKTsKCiAgICAvLyBDcmVh
dGUgaGFuZGxlIGZvciByYWRpbyBvYmplY3QKICAgIHVoZDo6cmZub2M6OmJsb2NrX2lkX3QgcmFk
aW9fY3RybF9pZCgwLCAiUmFkaW8iLCByYWRpb19pZCk7CiAgICB1aGQ6OnJmbm9jOjpyYWRpb19j
dHJsOjpzcHRyIHJhZGlvX2N0cmw7CiAgICByYWRpb19jdHJsID0gdXNycC0+Z2V0X2Jsb2NrX2N0
cmw8dWhkOjpyZm5vYzo6cmFkaW9fY3RybD4ocmFkaW9fY3RybF9pZCk7CiAgICBzdGQ6OmNvdXQg
PDwgIlVzaW5nIHJhZGlvICIgPDwgcmFkaW9faWQgPDwgIiwgY2hhbm5lbCAiIDw8IHJhZGlvX2No
YW4gPDwgc3RkOjplbmRsOwoKICAgIC8vIENyZWF0ZSBoYW5kbGUgZm9yIGRkYyBvYmplY3QKICAg
IHVoZDo6cmZub2M6OmJsb2NrX2lkX3QgZHVjX2N0cmxfaWQoMCwgIkRVQyIsIHJhZGlvX2lkKTsK
ICAgIHVoZDo6cmZub2M6OmJsb2NrX2N0cmxfYmFzZTo6c3B0ciBkdWNfY3RybDsKICAgIGlmICgh
dXNycC0+aGFzX2Jsb2NrKGR1Y19jdHJsX2lkKSkgewogICAgICAgIGNvdXQgPDwgIlVuYWJsZSB0
byBmaW5kIGJsb2NrIFwiIiA8PCBkdWNfY3RybF9pZCA8PCAiXCIiIDw8IGVuZGw7CiAgICAgICAg
cmV0dXJuIEVYSVRfRkFJTFVSRTsKICAgIH0KICAgIGR1Y19jdHJsID0gdXNycC0+Z2V0X2Jsb2Nr
X2N0cmwoZHVjX2N0cmxfaWQpOwogICAgc3RkOjpjb3V0IDw8ICJVc2luZyBkdWMgIiA8PCByYWRp
b19pZCA8PCAiLCBjaGFubmVsICIgPDwgcmFkaW9fY2hhbiA8PCBzdGQ6OmVuZGw7CgogICAgLy8g
Q2hlY2sgaWYgdGhlIHJlcGxheSBibG9jayBleGlzdHMgb24gdGhpcyBkZXZpY2UKICAgIHVoZDo6
cmZub2M6OmJsb2NrX2lkX3QgcmVwbGF5X2N0cmxfaWQoMCwgIlJlcGxheSIsIHJlcGxheV9pZCk7
CiAgICB1aGQ6OnJmbm9jOjpyZXBsYXlfYmxvY2tfY3RybDo6c3B0ciByZXBsYXlfY3RybDsKICAg
IGlmICghdXNycC0+aGFzX2Jsb2NrKHJlcGxheV9jdHJsX2lkKSkgewogICAgICAgIGNvdXQgPDwg
IlVuYWJsZSB0byBmaW5kIGJsb2NrIFwiIiA8PCByZXBsYXlfY3RybF9pZCA8PCAiXCIiIDw8IGVu
ZGw7CiAgICAgICAgcmV0dXJuIEVYSVRfRkFJTFVSRTsKICAgIH0KICAgIHJlcGxheV9jdHJsID0g
dXNycC0+Z2V0X2Jsb2NrX2N0cmw8dWhkOjpyZm5vYzo6cmVwbGF5X2Jsb2NrX2N0cmw+KHJlcGxh
eV9jdHJsX2lkKTsKICAgIHN0ZDo6Y291dCA8PCAiVXNpbmcgcmVwbGF5IGJsb2NrICIgPDwgcmVw
bGF5X2lkIDw8ICIsIGNoYW5uZWwgIiA8PCByZXBsYXlfY2hhbgogICAgICAgICAgICAgIDw8IHN0
ZDo6ZW5kbDsKCgogICAgLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vCiAgICAvLyBDb25maWd1cmUgcmFkaW8K
CiAgICAvLyBMb2NrIGNsb2NrcwogICAgaWYgKHZtLmNvdW50KCJyZWYiKSkgewogICAgICAgIHJh
ZGlvX2N0cmwtPnNldF9jbG9ja19zb3VyY2UocmVmKTsKICAgIH0KCiAgICAvLyBBcHBseSBhbnkg
cmFkaW8gYXJndW1lbnRzIHByb3ZpZGVkCiAgICByYWRpb19jdHJsLT5zZXRfYXJncyhyYWRpb19h
cmdzKTsKCiAgICAvLyBTZXQgdGhlIGNlbnRlciBmcmVxdWVuY3kKICAgIGlmIChub3Qgdm0uY291
bnQoImZyZXEiKSkgewogICAgICAgIHN0ZDo6Y2VyciA8PCAiUGxlYXNlIHNwZWNpZnkgdGhlIGNl
bnRlciBmcmVxdWVuY3kgd2l0aCAtLWZyZXEiIDw8IHN0ZDo6ZW5kbDsKICAgICAgICByZXR1cm4g
RVhJVF9GQUlMVVJFOwogICAgfQogICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlNldHRp
bmcgVFggRnJlcTogJWYgTUh6Li4uIikgJSAoZnJlcSAvIDFlNikgPDwgc3RkOjplbmRsOwogICAg
cmFkaW9fY3RybC0+c2V0X3R4X2ZyZXF1ZW5jeShmcmVxLCByYWRpb19jaGFuKTsKICAgIHN0ZDo6
Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgVFggRnJlcTogJWYgTUh6Li4uIikKICAgICAg
ICAgICAgICAgICAgICAgJSAocmFkaW9fY3RybC0+Z2V0X3R4X2ZyZXF1ZW5jeShyYWRpb19jaGFu
KSAvIDFlNikKICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGwKICAgICAgICAgICAgICA8PCBzdGQ6
OmVuZGw7CgogICAgLy8gU2V0IHRoZSBzYW1wbGUgcmF0ZQogICAgaWYgKHZtLmNvdW50KCJyYXRl
IikpIHsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBUWCBSYXRl
OiAlZiBNc3BzLi4uIikgJSAocmF0ZSAvIDFlNikKICAgICAgICAgICAgICAgICAgPDwgc3RkOjpl
bmRsOwoJCWR1Y19jdHJsLT5zZXRfYXJnPGRvdWJsZT4oIm91dHB1dF9yYXRlIixyYWRpb19jdHJs
LT5nZXRfcmF0ZSgpKTsKCQlkdWNfY3RybC0+c2V0X2FyZzxkb3VibGU+KCJpbnB1dF9yYXRlIixy
YXRlKTsKICAgICAgICAvL3JhZGlvX2N0cmwtPnNldF9yYXRlKHJhdGUpOwogICAgICAgIHN0ZDo6
Y291dCA8PCBib29zdDo6Zm9ybWF0KCJBY3R1YWwgVFggUmF0ZTogJWYgTXNwcy4uLiIpCiAgICAg
ICAgICAgICAgICAgICAgICAgICAlIChyYWRpb19jdHJsLT5nZXRfcmF0ZSgpIC8gMWU2KQogICAg
ICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGwKICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRs
OwogICAgfQoKICAgIC8vIFNldCB0aGUgUkYgZ2FpbgogICAgaWYgKHZtLmNvdW50KCJnYWluIikp
IHsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGluZyBUWCBHYWluOiAl
ZiBkQi4uLiIpICUgZ2FpbiA8PCBzdGQ6OmVuZGw7CiAgICAgICAgcmFkaW9fY3RybC0+c2V0X3R4
X2dhaW4oZ2FpbiwgcmFkaW9fY2hhbik7CiAgICAgICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3Jt
YXQoIkFjdHVhbCBUWCBHYWluOiAlZiBkQi4uLiIpCiAgICAgICAgICAgICAgICAgICAgICAgICAl
IHJhZGlvX2N0cmwtPmdldF90eF9nYWluKHJhZGlvX2NoYW4pCiAgICAgICAgICAgICAgICAgIDw8
IHN0ZDo6ZW5kbAogICAgICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CiAgICB9CgogICAgLy8g
U2V0IHRoZSBhbmFsb2cgZnJvbnQtZW5kIGZpbHRlciBiYW5kd2lkdGgKICAgIGlmICh2bS5jb3Vu
dCgiYnciKSkgewogICAgICAgIHN0ZDo6Y291dCA8PCBib29zdDo6Zm9ybWF0KCJTZXR0aW5nIFRY
IEJhbmR3aWR0aDogJWYgTUh6Li4uIikgJSAoYncgLyAxZTYpCiAgICAgICAgICAgICAgICAgIDw8
IHN0ZDo6ZW5kbDsKICAgICAgICByYWRpb19jdHJsLT5zZXRfdHhfYmFuZHdpZHRoKGJ3LCByYWRp
b19jaGFuKTsKICAgICAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiQWN0dWFsIFRYIEJh
bmR3aWR0aDogJWYgTUh6Li4uIikKICAgICAgICAgICAgICAgICAgICAgICAgICUgKHJhZGlvX2N0
cmwtPmdldF90eF9iYW5kd2lkdGgocmFkaW9fY2hhbikgLyAxZTYpCiAgICAgICAgICAgICAgICAg
IDw8IHN0ZDo6ZW5kbAogICAgICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CiAgICB9CgogICAg
Ly8gU2V0IHRoZSBhbnRlbm5hCiAgICBpZiAodm0uY291bnQoImFudCIpKSB7CiAgICAgICAgcmFk
aW9fY3RybC0+c2V0X3R4X2FudGVubmEoYW50LCByYWRpb19jaGFuKTsKICAgIH0KCiAgICAvLyBB
bGxvdyBmb3Igc29tZSBzZXR1cCB0aW1lCiAgICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3Io
c3RkOjpjaHJvbm86Om1pbGxpc2Vjb25kcygxMDAwKSk7CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
LwogICAgLy8gQ29ubmVjdCBSZXBsYXkgYmxvY2sgdG8gcmFkaW8KCiAgICB1aGQ6OnJmbm9jOjpn
cmFwaDo6c3B0ciByZXBsYXlfZ3JhcGggPSB1c3JwLT5jcmVhdGVfZ3JhcGgoInJmbm9jX3JlcGxh
eSIpOwogICAgdXNycC0+Y2xlYXIoKTsKICAgIHN0ZDo6Y291dCA8PCAiQ29ubmVjdGluZyAiIDw8
IHJlcGxheV9jdHJsLT5nZXRfYmxvY2tfaWQoKSA8PCAiID09PiAiCiAgICAgICAgICAgICAgPDwg
ZHVjX2N0cmwtPmdldF9ibG9ja19pZCgpIDw8IHN0ZDo6ZW5kbDsKICAgIHJlcGxheV9ncmFwaC0+
Y29ubmVjdChyZXBsYXlfY3RybC0+Z2V0X2Jsb2NrX2lkKCksCiAgICAgICAgcmVwbGF5X2NoYW4s
CiAgICAgICAgZHVjX2N0cmwtPmdldF9ibG9ja19pZCgpLAogICAgICAgIHJhZGlvX2NoYW4sCiAg
ICAgICAgcmVwbGF5X3NwcCk7CgogICAgc3RkOjpjb3V0IDw8ICJDb25uZWN0aW5nICIgPDwgZHVj
X2N0cmwtPmdldF9ibG9ja19pZCgpIDw8ICIgPT0+ICIKICAgICAgICAgICAgICA8PCByYWRpb19j
dHJsLT5nZXRfYmxvY2tfaWQoKSA8PCBzdGQ6OmVuZGw7CiAgICByZXBsYXlfZ3JhcGgtPmNvbm5l
Y3QoZHVjX2N0cmwtPmdldF9ibG9ja19pZCgpLAogICAgICAgIHJhZGlvX2NoYW4sCiAgICAgICAg
cmFkaW9fY3RybC0+Z2V0X2Jsb2NrX2lkKCksCiAgICAgICAgcmFkaW9fY2hhbiwKICAgICAgICBy
ZXBsYXlfc3BwKTsKCiAgICAvLyBJbmZvcm0gcmVwbGF5IGJsb2NrIHRoYXQgaXQgaGFzIGFuIFJY
IHN0cmVhbWVyIGNvbm5lY3RlZCB0byBpdAogICAgcmVwbGF5X2N0cmwtPnNldF9yeF9zdHJlYW1l
cih0cnVlLCByZXBsYXlfY2hhbik7CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwogICAgLy8gU2V0
dXAgc3RyZWFtZXIgdG8gUmVwbGF5IGJsb2NrCgogICAgdWhkOjpkZXZpY2VfYWRkcl90IHN0cmVh
bWVyX2FyZ3M7CiAgICB1aGQ6OnN0cmVhbV9hcmdzX3Qgc3RyZWFtX2FyZ3MoY3B1X2Zvcm1hdCwg
d2lyZV9mb3JtYXQpOwogICAgdWhkOjp0eF9zdHJlYW1lcjo6c3B0ciB0eF9zdHJlYW07CiAgICB1
aGQ6OnR4X21ldGFkYXRhX3QgdHhfbWQ7CgogICAgLy8gVGVsbCBzdHJlYW1lciB3aGF0IHJhZGlv
IHRvIHVzZSwgZXZlbiB0aG91Z2ggd2UncmUgbm90IHVzaW5nIGEgcmFkaW8KICAgIC8vIHdpdGgg
dGhpcyBzdHJlYW1lci4gZ2V0X3R4X3N0cmVhbSgpIHdpbGwgYWx3YXlzIHRyeSB0byBjb25maWd1
cmUgYQogICAgLy8gZG93bnN0cmVhbSByYWRpby4KICAgIHN0cmVhbWVyX2FyZ3NbInJhZGlvX2lk
Il0gICA9IHJhZGlvX2N0cmwtPmdldF9ibG9ja19pZCgpLnRvX3N0cmluZygpOwogICAgc3RyZWFt
ZXJfYXJnc1sicmFkaW9fcG9ydCJdID0gc3RyKGJvb3N0Ojpmb3JtYXQoIiVkIikgJSByYWRpb19j
aGFuKTsKICAgIC8vIFRlbGwgc3RyZWFtZXIgd2hhdCBibG9jayB3ZSB3YW50IHRvIHN0cmVhbSB0
bwogICAgc3RyZWFtZXJfYXJnc1siYmxvY2tfaWQiXSAgID0gcmVwbGF5X2N0cmwtPmdldF9ibG9j
a19pZCgpLnRvX3N0cmluZygpOwogICAgc3RyZWFtZXJfYXJnc1siYmxvY2tfcG9ydCJdID0gc3Ry
KGJvb3N0Ojpmb3JtYXQoIiVkIikgJSByZXBsYXlfY2hhbik7CiAgICBzdHJlYW1fYXJncy5hcmdz
ICAgICAgICAgICAgPSBzdHJlYW1lcl9hcmdzOwogICAgdHhfc3RyZWFtICAgICAgICAgICAgICAg
ICAgID0gdXNycC0+Z2V0X3R4X3N0cmVhbShzdHJlYW1fYXJncyk7CgogICAgLy8gTWFrZSBzdXJl
IHRoYXQgc3RyZWFtZXIgU1BQIGlzIGEgbXVsdGlwbGUgb2YgdGhlIFJlcGxheSBibG9jayB3b3Jk
IHNpemUKICAgIHNpemVfdCB0eF9zcHAgPSB0eF9zdHJlYW0tPmdldF9tYXhfbnVtX3NhbXBzKCk7
CiAgICBpZiAodHhfc3BwICUgc2FtcGxlc19wZXJfd29yZCAhPSAwKSB7CiAgICAgICAgLy8gUm91
bmQgU1BQIGRvd24gdG8gYSBtdWx0aXBsZSBvZiB0aGUgd29yZCBzaXplCiAgICAgICAgdHhfc3Bw
ID0gKHR4X3NwcCAvIHNhbXBsZXNfcGVyX3dvcmQpICogc2FtcGxlc19wZXJfd29yZDsKICAgICAg
ICB0eF9zdHJlYW0ucmVzZXQoKTsKICAgICAgICBzdHJlYW1lcl9hcmdzWyJzcHAiXSA9IGJvb3N0
OjpsZXhpY2FsX2Nhc3Q8c3RkOjpzdHJpbmc+KHR4X3NwcCk7CiAgICAgICAgc3RyZWFtX2FyZ3Mu
YXJncyAgICAgPSBzdHJlYW1lcl9hcmdzOwogICAgICAgIHR4X3N0cmVhbSAgICAgICAgICAgID0g
dXNycC0+Z2V0X3R4X3N0cmVhbShzdHJlYW1fYXJncyk7CiAgICB9CgogICAgY291dCA8PCAiVXNp
bmcgc3RyZWFtZXIgYXJnczogIiA8PCBzdHJlYW1fYXJncy5hcmdzLnRvX3N0cmluZygpIDw8IGVu
ZGw7CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwogICAgLy8gUmVhZCB0aGUgZGF0YSB0byByZXBs
YXkKCiAgICAvLyBPcGVuIHRoZSBmaWxlCiAgICBzdGQ6Omlmc3RyZWFtIGluZmlsZShmaWxlLmNf
c3RyKCksIHN0ZDo6aWZzdHJlYW06OmJpbmFyeSk7CiAgICBpZiAoIWluZmlsZS5pc19vcGVuKCkp
IHsKICAgICAgICBzdGQ6OmNlcnIgPDwgIkNvdWxkIG5vdCBvcGVuIHNwZWNpZmllZCBmaWxlIiA8
PCBzdGQ6OmVuZGw7CiAgICAgICAgcmV0dXJuIEVYSVRfRkFJTFVSRTsKICAgIH0KCiAgICAvLyBH
ZXQgdGhlIGZpbGUgc2l6ZQogICAgaW5maWxlLnNlZWtnKDAsIHN0ZDo6aW9zOjplbmQpOwogICAg
c2l6ZV90IGZpbGVfc2l6ZSA9IGluZmlsZS50ZWxsZygpOwogICAgaW5maWxlLnNlZWtnKDAsIHN0
ZDo6aW9zOjpiZWcpOwoKICAgIC8vIENhbGN1bGF0ZSB0aGUgbnVtYmVyIG9mIDY0LWJpdCB3b3Jk
cyBhbmQgc2FtcGxlcyB0byByZXBsYXkKICAgIHNpemVfdCB3b3Jkc190b19yZXBsYXkgICA9IGZp
bGVfc2l6ZSAvIHJlcGxheV93b3JkX3NpemU7CiAgICBzaXplX3Qgc2FtcGxlc190b19yZXBsYXkg
PSB3b3Jkc190b19yZXBsYXkgKiByZXBsYXlfd29yZF9zaXplIC8gYnl0ZXNfcGVyX3NhbXBsZTsK
CiAgICAvLyBDcmVhdGUgYnVmZmVyCiAgICBzdGQ6OnZlY3RvcjxjaGFyPiB0eF9idWZmZXIod29y
ZHNfdG9fcmVwbGF5ICogcmVwbGF5X3dvcmRfc2l6ZSk7CiAgICBjaGFyKiB0eF9idWZfcHRyID0g
JnR4X2J1ZmZlclswXTsKCiAgICAvLyBSZWFkIGZpbGUgaW50byBidWZmZXIsIHJvdW5kZWQgZG93
biB0byBudW1iZXIgb2Ygd29yZHMKICAgIGluZmlsZS5yZWFkKHR4X2J1Zl9wdHIsIHdvcmRzX3Rv
X3JlcGxheSAqIHJlcGxheV93b3JkX3NpemUpOwogICAgaW5maWxlLmNsb3NlKCk7CgoKICAgIC8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLwogICAgLy8gQ29uZmlndXJlIHJlcGxheSBibG9jawoKICAgIC8vIENv
bmZpZ3VyZSBhIGJ1ZmZlciBpbiB0aGUgb24tYm9hcmQgbWVtb3J5IGF0IGFkZHJlc3MgMCB0aGF0
J3MgZXF1YWwgaW4KICAgIC8vIHNpemUgdG8gdGhlIGZpbGUgd2Ugd2FudCB0byBwbGF5IGJhY2sg
KHJvdW5kZWQgZG93biB0byBhIG11bHRpcGxlIG9mCiAgICAvLyA2NC1iaXQgd29yZHMpLiBOb3Rl
IHRoYXQgaXQgaXMgYWxsb3dlZCB0byBwbGF5YmFjayBhIGRpZmZlcmVudCBzaXplIG9yCiAgICAv
LyBsb2NhdGlvbiBmcm9tIHdoYXQgd2FzIHJlY29yZGVkLgogICAgcmVwbGF5X2N0cmwtPmNvbmZp
Z19yZWNvcmQoMCwgd29yZHNfdG9fcmVwbGF5ICogcmVwbGF5X3dvcmRfc2l6ZSwgcmVwbGF5X2No
YW4pOwogICAgcmVwbGF5X2N0cmwtPmNvbmZpZ19wbGF5KDAsIHdvcmRzX3RvX3JlcGxheSAqIHJl
cGxheV93b3JkX3NpemUsIHJlcGxheV9jaGFuKTsKCiAgICAvLyBTZXQgc2FtcGxlcyBwZXIgcGFj
a2V0IGZvciBSZXBsYXkgYmxvY2sgcGxheWJhY2sKICAgIHJlcGxheV9jdHJsLT5zZXRfd29yZHNf
cGVyX3BhY2tldChyZXBsYXlfc3BwIC8gc2FtcGxlc19wZXJfd29yZCwgcmVwbGF5X2NoYW4pOwoK
ICAgIC8vIERpc3BsYXkgcmVwbGF5IGNvbmZpZ3VyYXRpb24KICAgIGNvdXQgPDwgYm9vc3Q6OmZv
cm1hdCgiUmVwbGF5IGZpbGUgc2l6ZTogICAgICVkIGJ5dGVzICglZCBxd29yZHMsICVkIHNhbXBs
ZXMpIikKICAgICAgICAgICAgICAgICUgKHdvcmRzX3RvX3JlcGxheSAqIHJlcGxheV93b3JkX3Np
emUpICUgd29yZHNfdG9fcmVwbGF5CiAgICAgICAgICAgICAgICAlIHNhbXBsZXNfdG9fcmVwbGF5
CiAgICAgICAgIDw8IGVuZGw7CgogICAgY291dCA8PCBib29zdDo6Zm9ybWF0KCJSZWNvcmQgYmFz
ZSBhZGRyZXNzOiAgMHglWCIpCiAgICAgICAgICAgICAgICAlIHJlcGxheV9jdHJsLT5nZXRfcmVj
b3JkX2FkZHIocmVwbGF5X2NoYW4pCiAgICAgICAgIDw8IGVuZGw7CiAgICBjb3V0IDw8IGJvb3N0
Ojpmb3JtYXQoIlJlY29yZCBidWZmZXIgc2l6ZTogICAlZCBieXRlcyIpCiAgICAgICAgICAgICAg
ICAlIHJlcGxheV9jdHJsLT5nZXRfcmVjb3JkX3NpemUocmVwbGF5X2NoYW4pCiAgICAgICAgIDw8
IGVuZGw7CiAgICBjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlJlY29yZCBmdWxsbmVzczogICAgICAl
ZCIpCiAgICAgICAgICAgICAgICAlIHJlcGxheV9jdHJsLT5nZXRfcmVjb3JkX2Z1bGxuZXNzKHJl
cGxheV9jaGFuKQogICAgICAgICA8PCBlbmRsOwogICAgY291dCA8PCBib29zdDo6Zm9ybWF0KCJQ
bGF5IGJhc2UgYWRkcmVzczogICAgMHglWCIpCiAgICAgICAgICAgICAgICAlIHJlcGxheV9jdHJs
LT5nZXRfcGxheV9hZGRyKHJlcGxheV9jaGFuKQogICAgICAgICA8PCBlbmRsOwogICAgY291dCA8
PCBib29zdDo6Zm9ybWF0KCJQbGF5IGJ1ZmZlciBzaXplOiAgICAgJWQgYnl0ZXMiKQogICAgICAg
ICAgICAgICAgJSByZXBsYXlfY3RybC0+Z2V0X3BsYXlfc2l6ZShyZXBsYXlfY2hhbikKICAgICAg
ICAgPDwgZW5kbDsKCiAgICAvLyBSZXN0YXJ0IHJlY29yZCBidWZmZXIgcmVwZWF0ZWRseSB1bnRp
bCBubyBuZXcgZGF0YSBhcHBlYXJzIG9uIHRoZSBSZXBsYXkKICAgIC8vIGJsb2NrJ3MgaW5wdXQu
IFRoaXMgd2lsbCBmbHVzaCBhbnkgZGF0YSB0aGF0IHdhcyBidWZmZXJlZCBvbiB0aGUgaW5wdXQu
CiAgICB1aW50MzJfdCBmdWxsbmVzczsKICAgIGNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiUmVzdGFy
dGluZyByZWNvcmQgYnVmZmVyLi4uIikgPDwgZW5kbDsKICAgIGRvIHsKICAgICAgICBzdGQ6OmNo
cm9ubzo6c3lzdGVtX2Nsb2NrOjp0aW1lX3BvaW50IHN0YXJ0X3RpbWU7CiAgICAgICAgc3RkOjpj
aHJvbm86OnN5c3RlbV9jbG9jazo6ZHVyYXRpb24gdGltZV9kaWZmOwoKICAgICAgICByZXBsYXlf
Y3RybC0+cmVjb3JkX3Jlc3RhcnQocmVwbGF5X2NoYW4pOwoKICAgICAgICAvLyBNYWtlIHN1cmUg
dGhlIHJlY29yZCBidWZmZXIgZG9lc24ndCBzdGFydCB0byBmaWxsIGFnYWluCiAgICAgICAgc3Rh
cnRfdGltZSA9IHN0ZDo6Y2hyb25vOjpzeXN0ZW1fY2xvY2s6Om5vdygpOwogICAgICAgIGRvIHsK
ICAgICAgICAgICAgZnVsbG5lc3MgPSByZXBsYXlfY3RybC0+Z2V0X3JlY29yZF9mdWxsbmVzcyhy
ZXBsYXlfY2hhbik7CiAgICAgICAgICAgIGlmIChmdWxsbmVzcyAhPSAwKQogICAgICAgICAgICAg
ICAgYnJlYWs7CiAgICAgICAgICAgIHRpbWVfZGlmZiA9IHN0ZDo6Y2hyb25vOjpzeXN0ZW1fY2xv
Y2s6Om5vdygpIC0gc3RhcnRfdGltZTsKICAgICAgICAgICAgdGltZV9kaWZmID0gc3RkOjpjaHJv
bm86OmR1cmF0aW9uX2Nhc3Q8c3RkOjpjaHJvbm86Om1pbGxpc2Vjb25kcz4odGltZV9kaWZmKTsK
ICAgICAgICB9IHdoaWxlICh0aW1lX2RpZmYuY291bnQoKSA8IDI1MCk7CiAgICB9IHdoaWxlIChm
dWxsbmVzcyk7CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwogICAgLy8gU2VuZCBkYXRhIHRvIHJl
cGxheSAocmVjb3JkIHRoZSBkYXRhKQoKICAgIGNvdXQgPDwgIlNlbmRpbmcgZGF0YSB0byBiZSBy
ZWNvcmRlZC4uLiIgPDwgZW5kbDsKICAgIHR4X21kLnN0YXJ0X29mX2J1cnN0ID0gdHJ1ZTsKICAg
IHR4X21kLmVuZF9vZl9idXJzdCAgID0gdHJ1ZTsKICAgIHNpemVfdCBudW1fdHhfc2FtcHMgID0g
dHhfc3RyZWFtLT5zZW5kKHR4X2J1Zl9wdHIsIHNhbXBsZXNfdG9fcmVwbGF5LCB0eF9tZCk7Cgog
ICAgaWYgKG51bV90eF9zYW1wcyAhPSBzYW1wbGVzX3RvX3JlcGxheSkgewogICAgICAgIGNvdXQg
PDwgYm9vc3Q6OmZvcm1hdCgiRVJST1I6IFVuYWJsZSB0byBzZW5kICVkIHNhbXBsZXMiKSAlIHNh
bXBsZXNfdG9fcmVwbGF5CiAgICAgICAgICAgICA8PCBlbmRsOwogICAgICAgIHJldHVybiBFWElU
X0ZBSUxVUkU7CiAgICB9CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwogICAgLy8gV2FpdCBmb3Ig
ZGF0YSB0byBiZSBzdG9yZWQgaW4gb24tYm9hcmQgbWVtb3J5CgogICAgY291dCA8PCAiV2FpdGlu
ZyBmb3IgcmVjb3JkaW5nIHRvIGNvbXBsZXRlLi4uIiA8PCBlbmRsOwogICAgd2hpbGUgKHJlcGxh
eV9jdHJsLT5nZXRfcmVjb3JkX2Z1bGxuZXNzKHJlcGxheV9jaGFuKQogICAgICAgICAgIDwgd29y
ZHNfdG9fcmVwbGF5ICogcmVwbGF5X3dvcmRfc2l6ZSkKICAgICAgICA7CgoKd2hpbGUgKHRydWUp
IHsKCXN0b3Bfc2lnbmFsX2NhbGxlZCA9IGZhbHNlOwoJCglzdGQ6OmNvdXQgPDwgImhpdCA8ZW50
ZXI+IHRvIHN0YXJ0IHN0cmVhbWluZywgdHlwZSAnZXhpdCcgdG8gcXVpdCIgPDwgc3RkOjplbmRs
OwoJc3RkOjpzdHJpbmcgdXNlcl9jbWQgPSAiIjsKCXN0ZDo6Z2V0bGluZShzdGQ6OmNpbix1c2Vy
X2NtZCk7CglpZiAodXNlcl9jbWQ9PSJleGl0IikgYnJlYWs7CgkKICAgIC8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLwogICAgLy8gU3RhcnQgcmVwbGF5IG9mIGRhdGEKCiAgICB1aGQ6OnN0cmVhbV9jbWRfdCBz
dHJlYW1fY21kKHVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVEFSVF9DT05USU5VT1VT
KTsKCiAgICBpZiAobnNhbXBzID09IDApIHsKICAgICAgICAvLyBSZXBsYXkgdGhlIGVudGlyZSBi
dWZmZXIgb3ZlciBhbmQgb3ZlcgogICAgICAgIHN0cmVhbV9jbWQuc3RyZWFtX21vZGUgPSB1aGQ6
OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfU1RBUlRfQ09OVElOVU9VUzsKICAgICAgICBzdHJl
YW1fY21kLm51bV9zYW1wcyAgID0gd29yZHNfdG9fcmVwbGF5ICogc2FtcGxlc19wZXJfd29yZDsK
ICAgICAgICBjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIlN0YXJ0IHJlcGxheSBvZiAlZCBzYW1wbGVz
IGluIGNvbnRpbnVvdXMgbW9kZSwgIgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiJWYg
c2Vjb25kcyBpbiB0aGUgZnV0dXJlLi4uIikKICAgICAgICAgICAgICAgICAgICAlIHN0cmVhbV9j
bWQubnVtX3NhbXBzICUgc2Vjb25kc19pbl9mdXR1cmUKICAgICAgICAgICAgIDw8IGVuZGw7CiAg
ICB9IGVsc2UgewogICAgICAgIC8vIFJlcGxheSBuc2FtcHMsIHdyYXBwaW5nIGJhY2sgdG8gdGhl
IHN0YXJ0IG9mIHRoZSBidWZmZXIgaWYgbnNhbXBzIGlzCiAgICAgICAgLy8gbGFyZ2VyIHRoYW4g
dGhlIGJ1ZmZlciBzaXplLgogICAgICAgIHN0cmVhbV9jbWQuc3RyZWFtX21vZGUgPSB1aGQ6OnN0
cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfTlVNX1NBTVBTX0FORF9ET05FOwogICAgICAgIHN0cmVh
bV9jbWQubnVtX3NhbXBzICAgPSBuc2FtcHM7CiAgICAgICAgY291dCA8PCBib29zdDo6Zm9ybWF0
KCJTdGFydCByZXBsYXkgb2YgJWQgc2FtcGxlcywgIgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAiJWYgc2Vjb25kcyBpbiB0aGUgZnV0dXJlLi4uIikKICAgICAgICAgICAgICAgICAgICAl
IHN0cmVhbV9jbWQubnVtX3NhbXBzICUgc2Vjb25kc19pbl9mdXR1cmUKICAgICAgICAgICAgIDw8
IGVuZGw7CiAgICB9CiAgICBpZiAoc2Vjb25kc19pbl9mdXR1cmUgPT0gMC4wKSB7CiAgICAgICAg
c3RyZWFtX2NtZC5zdHJlYW1fbm93ID0gdHJ1ZTsKICAgIH0gZWxzZSB7CiAgICAgICAgc3RyZWFt
X2NtZC5zdHJlYW1fbm93ID0gZmFsc2U7CiAgICAgICAgc3RyZWFtX2NtZC50aW1lX3NwZWMgPQog
ICAgICAgICAgICByYWRpb19jdHJsLT5nZXRfdGltZV9ub3coKSArIHVoZDo6dGltZV9zcGVjX3Qo
c2Vjb25kc19pbl9mdXR1cmUpOwogICAgfQogICAgcmVwbGF5X2N0cmwtPmlzc3VlX3N0cmVhbV9j
bWQoc3RyZWFtX2NtZCwgcmVwbGF5X2NoYW4pOwoKCiAgICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KICAg
IC8vIFdhaXQgdW50aWwgc2FtcGxlcyBzZW50IG9yIHVzZXIgc2F5cyB0byBzdG9wCgogICAgLy8g
U2V0dXAgU0lHSU5UIGhhbmRsZXIgKEN0cmwrQykKICAgIHN0ZDo6c2lnbmFsKFNJR0lOVCwgJnNp
Z19pbnRfaGFuZGxlcik7CiAgICBjb3V0IDw8ICJSZXBsYXlpbmcgZGF0YSAoUHJlc3MgQ3RybCtD
IHRvIHN0b3ApLi4uIiA8PCBzdGQ6OmVuZGw7CgogICAgYm9vbCBnb3RfYXN5bmNfYnVyc3RfYWNr
ID0gZmFsc2U7CiAgICBpZiAobnNhbXBzID09IDApIHsKICAgICAgICAvLyBUcmFuc21pdCB1bnRp
bCB0aGUgdXNlciBwcmVzc2VzIEN0cmwrQwogICAgICAgIHdoaWxlIChub3Qgc3RvcF9zaWduYWxf
Y2FsbGVkKSB7CiAgICAgICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNo
cm9ubzo6bWlsbGlzZWNvbmRzKDEwMCkpOwogICAgICAgIH0KICAgIH0gZWxzZSB7CiAgICAgICAg
Y29uc3QgZG91YmxlIHRpbWVvdXQgPSBzZWNvbmRzX2luX2Z1dHVyZSArIG5zYW1wcyAvIHJhZGlv
X2N0cmwtPmdldF9yYXRlKCkgKyAwLjU7CiAgICAgICAgdWhkOjphc3luY19tZXRhZGF0YV90IGFz
eW5jX21kOwoKICAgICAgICAvLyBXYWl0IHVudGlsIHdlIGdldCB0aGUgZW5kLW9mLWJ1cnN0IGFj
a25vd2xlZGdtZW50CiAgICAgICAgd2hpbGUgKG5vdCBzdG9wX3NpZ25hbF9jYWxsZWQgYW5kIG5v
dCBnb3RfYXN5bmNfYnVyc3RfYWNrCiAgICAgICAgICAgICAgIGFuZCB0eF9zdHJlYW0tPnJlY3Zf
YXN5bmNfbXNnKGFzeW5jX21kLCB0aW1lb3V0KSkgewogICAgICAgICAgICBnb3RfYXN5bmNfYnVy
c3RfYWNrID0KICAgICAgICAgICAgICAgIChhc3luY19tZC5ldmVudF9jb2RlID09IHVoZDo6YXN5
bmNfbWV0YWRhdGFfdDo6RVZFTlRfQ09ERV9CVVJTVF9BQ0spOwogICAgICAgIH0KICAgICAgICBz
dGQ6OmNvdXQgPDwgKGdvdF9hc3luY19idXJzdF9hY2sgPyAiRG9uZSIgOiAiVGltZW91dCIpIDw8
IHN0ZDo6ZW5kbDsKCiAgICAgICAgcmV0dXJuIEVYSVRfU1VDQ0VTUzsKICAgIH0KCiAgICAvLyBS
ZW1vdmUgU0lHSU5UIGhhbmRsZXIKICAgIHN0ZDo6c2lnbmFsKFNJR0lOVCwgU0lHX0RGTCk7CgoK
ICAgIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLwogICAgLy8gSXNzdWUgc3RvcCBjb21tYW5kCgogICAgc3Ry
ZWFtX2NtZC5zdHJlYW1fbW9kZSA9IHVoZDo6c3RyZWFtX2NtZF90OjpTVFJFQU1fTU9ERV9TVE9Q
X0NPTlRJTlVPVVM7CiAgICBjb3V0IDw8IGVuZGwgPDwgIlN0b3BwaW5nIHJlcGxheS4uLiIgPDwg
ZW5kbDsKICAgIHJlcGxheV9jdHJsLT5pc3N1ZV9zdHJlYW1fY21kKHN0cmVhbV9jbWQsIHJlcGxh
eV9jaGFuKTsKCiAgICAvLyBUaGUgc3RvcCB0YWtlcyBlZmZlY3QgYWZ0ZXIgdGhlIGN1cnJlbnQg
Y29tbWFuZCBoYXMgY29tcGxldGVkLCBzbyB1c2UKICAgIC8vIGhhbHQgdG8gc3RvcCB0aGUgY29t
bWFuZCBpbiBwcm9ncmVzcyBhbmQgY2xlYXIgYW55IHF1ZXVlZCBjb21tYW5kcy4KICAgIC8vcmVw
bGF5X2N0cmwtPnBsYXlfaGFsdChyZXBsYXlfY2hhbik7CgoKICAgIC8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
LwogICAgLy8gV2FpdCBmb3IgYW55IGJ1ZmZlcmVkIHJlcGxheSBkYXRhIHRvIGZpbmlzaCBwbGF5
aW5nIG91dAoKICAgIHVpbnQxNl90IHByZXZfcGFja2V0X2NvdW50LCBwYWNrZXRfY291bnQ7Cgog
ICAgY291dCA8PCAiV2FpdGluZyBmb3IgcmVwbGF5IGRhdGEgdG8gZmx1c2guLi4gIiA8PCBzdGQ6
OmZsdXNoOwogICAgcHJldl9wYWNrZXRfY291bnQgPQogICAgICAgIHJlcGxheV9jdHJsLT5zcl9y
ZWFkNjQodWhkOjpyZm5vYzo6U1JfUkVBREJBQ0tfUkVHX0dMT0JBTF9QQVJBTVMsIHJlcGxheV9j
aGFuKQogICAgICAgID4+IDMyOwogICAgd2hpbGUgKHRydWUpIHsKICAgICAgICBzdGQ6OnRoaXNf
dGhyZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86Om1pbGxpc2Vjb25kcygxMDApKTsKICAgICAg
ICBwYWNrZXRfY291bnQgPQogICAgICAgICAgICByZXBsYXlfY3RybC0+c3JfcmVhZDY0KHVoZDo6
cmZub2M6OlNSX1JFQURCQUNLX1JFR19HTE9CQUxfUEFSQU1TLCByZXBsYXlfY2hhbikKICAgICAg
ICAgICAgPj4gMzI7CiAgICAgICAgaWYgKHBhY2tldF9jb3VudCA9PSBwcmV2X3BhY2tldF9jb3Vu
dCkKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgcHJldl9wYWNrZXRfY291bnQgPSBwYWNrZXRf
Y291bnQ7CiAgICB9Cgp9CiAgICBjb3V0IDw8IGVuZGwgPDwgIkRvbmUiIDw8IGVuZGw7CgogICAg
cmV0dXJuIEVYSVRfU1VDQ0VTUzsKfQo=
--000000000000aa800e05a9ccabe6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--000000000000aa800e05a9ccabe6--

