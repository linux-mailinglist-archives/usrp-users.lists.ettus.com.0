Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C348397478
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 15:39:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA3BD3841C3
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jun 2021 09:39:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Herbq/WW";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 48CB6383DD3
	for <USRP-users@lists.ettus.com>; Tue,  1 Jun 2021 09:38:12 -0400 (EDT)
Received: by mail-qv1-f53.google.com with SMTP id k2so7142892qvc.5
        for <USRP-users@lists.ettus.com>; Tue, 01 Jun 2021 06:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=x9w8xtyuTZK5owJm7avRkavTIvw1LMdnTCS2W3MVIPo=;
        b=Herbq/WWnxUCTMOrudeOl2E6vpWq6LFiG5FyeebpJBacgyNGg/gaIbWnqsg0h2172L
         TqAOMdoeTLAgTv0K8tOxLPwZE0dKUueLCG3eK49QKlsI+M6ibU6xXsTaGFvxXD53QilW
         IZGxROiRH77XldQxdeHXp7fFuZLqbvKy7TzfOkW3cHjNv/dSyMeZzYJ9IMqHwJDNRiEx
         grGY6NflmmkMccN0WK/eVWHbaCXGVeuxwF4NGOXpnOzHLntnKuCXt1HHDF1teOXgJ9K2
         TCUyt5fo5zvyrdE1vfHpMfftNnzAX/iPg/U/rM5DQc+maVdT8uPX3NllKI7IFXgImDzm
         N5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=x9w8xtyuTZK5owJm7avRkavTIvw1LMdnTCS2W3MVIPo=;
        b=r1nLM+6k7JOpc+lSJL4sdy2I99jtBg1LUQ16bo3e/LDq4tmIbW3qc22+DmiIR5P29i
         eaU2m1ny9/TAxAqKLkdZT1Z7mQkdnZuJyzcuAPpju8CkxKDVaj6Psh+pdcpXFUX+lAyZ
         RyRscLxl0HYnkFnJt1F8UGViRTgI/5wpEw6/ehvrvRF+tC7ZqJhTmdaEQc3OvvpbWxY+
         fegdXd1Uv6Pf5fBDCIz5HJCt+oKjC3dqYr99akmJ2QknhrNGFNrx3slZrsxzE70bTmYY
         z+NApVbUKviFc9nU8cyLM3+CRtWflunh36MXRs8bcFWu6pyY0k/mbh9HGDA7HY8Wegqm
         yCbA==
X-Gm-Message-State: AOAM5326xy4DRiJs/isJFvnRG/8zv+rJc0jFPH8tWhIjCDk6V3z716TV
	f8Qe0Y+ECZUZX7wY5AL2lSICKKKW4+w=
X-Google-Smtp-Source: ABdhPJxubuIXEmJBY5yF2sZHpQOAI4CeCpdeO6dJTUIKJT8Nk7DMD38WN7GvTA/afTrVhQEoRWhF8w==
X-Received: by 2002:a05:6214:249:: with SMTP id k9mr22093821qvt.5.1622554691550;
        Tue, 01 Jun 2021 06:38:11 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id z1sm11113879qki.47.2021.06.01.06.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 06:38:11 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 1 Jun 2021 09:38:10 -0400
Message-Id: <85E339FA-057C-475A-AA4A-45FC12DEBCB0@gmail.com>
References: <1622551936945.48770@isc.tuc.gr>
In-Reply-To: <1622551936945.48770@isc.tuc.gr>
To: Skyvalakis Konstantinos <kskyvalakis@isc.tuc.gr>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: LFIPK4CZ53VFRENCEGGINNGV2FSBQR3I
X-Message-ID-Hash: LFIPK4CZ53VFRENCEGGINNGV2FSBQR3I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LFIPK4CZ53VFRENCEGGINNGV2FSBQR3I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8177972482699628172=="


--===============8177972482699628172==
Content-Type: multipart/alternative; boundary=Apple-Mail-47F40923-04B6-4201-BEB5-14D4CF58531E
Content-Transfer-Encoding: 7bit


--Apple-Mail-47F40923-04B6-4201-BEB5-14D4CF58531E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

That really is more of a general programming question. If multithreaded desi=
gn is unfamiliar to you, this is not the forum to learn it.=20

I think you=E2=80=99re using Python, which means using the multiprocessing m=
odule. Python threads won=E2=80=99t work.=20

You can get some clues by looking at the code generated by Gnu Radio=E2=80=94=
since it places each block in its own CPU thread.=20



Sent from my iPhone

> On Jun 1, 2021, at 8:52 AM, Skyvalakis Konstantinos <kskyvalakis@isc.tuc.g=
r> wrote:
>=20
> =EF=BB=BF
> How can I =E2=80=8Brun the Tx and Rx in separate threads?
>=20
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Tuesday, June 1, 2021 3:04 PM
> To: Skyvalakis Konstantinos; usrp-users@lists.ettus.com
> Subject: Re: USRP N200
> =20
>> On 06/01/2021 02:47 AM, Skyvalakis Konstantinos wrote:
>> I managed to fix that last fifo ctrl time out error by adding as many Tx a=
s Rx channels like you said.
>>=20
>>=20
>>=20
>> My code now executes without any errors from the UHD at the beginning, bu=
t as soon as it does I get something like "LLLLLLUUULLLLULUL" on the termina=
l.
>>=20
> The "L" means 'late packet'.  Which happens when your TX packet is tagged t=
o be transmitted at a particular time, and that time
>   has already passed.
>=20
> The 'U' is under-run, which means that your code isn't "keeping up" with t=
he TX rate--which at 1Msps means something is
>   terribly wrong.
>=20
> Are you running your RX and TX in separate threads?  If not, you really sh=
ould. =20
>=20
>=20
>>=20
>> My ADC rate is 2MHz and my DAC rate is 1MHz in case that matters.
>>=20
>>=20
>>=20
>> Could I fix all of these problems if I had a MIMO cable to connect the 2 d=
evices?
>>=20
>> =E2=80=8B
>>=20
>> From: Skyvalakis Konstantinos
>> Sent: Tuesday, June 1, 2021 9:09 AM
>> To: Marcus D. Leech; usrp-users@lists.ettus.com
>> Subject: Re: USRP N200
>> =20
>> Ok I will try this last advice. I will put as many Tx as Rx channels and I=
 will let you know.
>>=20
>>=20
>>=20
>> Regarding the error you asked me for, the complete output is:
>>=20
>>=20
>>=20
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-=
0-gaea0e2de
>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>> [INFO] [USRP2] Current send frame size: 1472 bytes
>> [INFO] [USRP2] Opening a USRP2/N-Series device...
>> [INFO] [USRP2] Current recv frame size: 1472 bytes
>> [INFO] [USRP2] Current send frame size: 1472 bytes
>> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
>> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
>> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
>> Traceback (most recent call last):
>>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 172, in <modul=
e>
>>     main_block =3D reader_top_block()
>>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 141, in __init=
__
>>     self.usrp_init()
>>   File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 56, in usrp_in=
it
>>     self.sink.set_time_unknown_pps(uhd.time_spec())
>>   File "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py",=
 line 4814, in set_time_unknown_pps
>>     return _uhd_swig.usrp_sink_sptr_set_time_unknown_pps(self, time_spec)=

>> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
>> [ERROR] [UHD] Exception caught in safe-call.
>>   in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()
>>   at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:54=

>> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
>>=20
>> From: Marcus D. Leech <patchvonbraun@gmail.com>
>> Sent: Tuesday, June 1, 2021 12:35 AM
>> To: Skyvalakis Konstantinos; usrp-users@lists.ettus.com
>> Subject: Re: USRP N200
>> =20
>>> On 05/31/2021 03:17 PM, Skyvalakis Konstantinos wrote:
>>> Ok, I did the upgrade and all the necessary rebuilds.
>>>=20
>>>=20
>>>=20
>>> The error persists this time however with more information.
>>>=20
>>>=20
>>>=20
>>> RuntimeError: RuntimeError: fifo ctrl timed out looking for acks
>>> [ERROR] [UHD] Exception caught in safe-call.
>>>   in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()
>>>   at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl.cpp:5=
4
>>> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks=E2=
=80=8B
>>>=20
>>>=20
>>>=20
>> Also, when you have a TX/RX scenario like this, for some hardware, you ne=
ed to have as many TX channels as RX channels.
>>=20
>> So, establish your "sink" such that it talks to both devices, and then ju=
st stuff the buffer with 0s for the channel you're not using.
>>=20
>>=20
>=20

--Apple-Mail-47F40923-04B6-4201-BEB5-14D4CF58531E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That really is more of a general programmin=
g question. If multithreaded design is unfamiliar to you, this is not the fo=
rum to learn it.&nbsp;<div><br></div><div>I think you=E2=80=99re using Pytho=
n, which means using the multiprocessing module. Python threads won=E2=80=99=
t work.&nbsp;</div><div><br></div><div>You can get some clues by looking at t=
he code generated by Gnu Radio=E2=80=94since it places each block in its own=
 CPU thread.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 1, 2=
021, at 8:52 AM, Skyvalakis Konstantinos &lt;kskyvalakis@isc.tuc.gr&gt; wrot=
e:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<p>How can I&nbsp;=E2=80=8Brun the Tx and Rx in separate threads?<br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;pat=
chvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, June 1, 2021 3:04 PM<br>
<b>To:</b> Skyvalakis Konstantinos; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: USRP N200</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 06/01/2021 02:47 AM, Skyvalakis Konstantin=
os wrote:<br>
</div>
<blockquote type=3D"cite">
<p>I managed to fix that last fifo ctrl time out error by adding as many Tx a=
s Rx channels like you said.<br>
</p>
<p><br>
</p>
<p>My code now executes without any errors from the UHD at the beginning,&nb=
sp;but as soon as it does I get something like&nbsp;"LLLLLLUUULLLLULUL" on t=
he terminal.<br>
</p>
</blockquote>
The "L" means 'late packet'.&nbsp; Which happens when your TX packet is tagg=
ed to be transmitted at a particular time, and that time<br>
&nbsp; has already passed.<br>
<br>
The 'U' is under-run, which means that your code isn't "keeping up" with the=
 TX rate--which at 1Msps means something is<br>
&nbsp; terribly wrong.<br>
<br>
Are you running your RX and TX in separate threads?&nbsp; If not, you really=
 should.&nbsp; <br>
<br>
<br>
<blockquote type=3D"cite">
<p></p>
<p><br>
</p>
<p>My ADC rate is 2MHz and&nbsp;my DAC rate is 1MHz in case that matters.<br=
>
</p>
<p><br>
</p>
<p>Could I fix all of these problems if I had a MIMO cable to connect the 2 d=
evices?<br>
</p>
<p>=E2=80=8B<br>
</p>
<div dir=3D"ltr" style=3D"font-size:12pt; color:#000000; background-color:#FF=
FFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calibr=
i, sans-serif" style=3D"font-size:11pt"><b>From:</b> Skyvalakis Konstantinos=
<br>
<b>Sent:</b> Tuesday, June 1, 2021 9:09 AM<br>
<b>To:</b> Marcus D. Leech; <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: USRP N200</font>
<div>&nbsp;</div>
</div>
<div>
<p>Ok I will try this last advice. I will put&nbsp;as many Tx as Rx channels=
 and I will let you know.<br>
</p>
<p><br>
</p>
<p>Regarding the error you asked me for, the complete output is:<br>
</p>
<p><br>
</p>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEA=
D-0-gaea0e2de</div>
<div>[INFO] [USRP2] Opening a USRP2/N-Series device...</div>
<div>[INFO] [USRP2] Current recv frame size: 1472 bytes</div>
<div>[INFO] [USRP2] Current send frame size: 1472 bytes</div>
<div>[INFO] [USRP2] Opening a USRP2/N-Series device...</div>
<div>[INFO] [USRP2] Current recv frame size: 1472 bytes</div>
<div>[INFO] [USRP2] Current send frame size: 1472 bytes</div>
<div>[INFO] [MULTI_USRP]&nbsp; &nbsp; &nbsp;1) catch time transition at pps e=
dge</div>
<div>[INFO] [MULTI_USRP]&nbsp; &nbsp; &nbsp;2) set times next pps (synchrono=
usly)</div>
<div>[INFO] [MULTI_USRP]&nbsp; &nbsp; &nbsp;1) catch time transition at pps e=
dge</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 172, in=
 &lt;module&gt;</div>
<div>&nbsp; &nbsp; main_block =3D reader_top_block()</div>
<div>&nbsp; File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 141, in=
 __init__</div>
<div>&nbsp; &nbsp; self.usrp_init()</div>
<div>&nbsp; File "./reader_monostatic_with_MIMO_sniffer_v5.py", line 56, in u=
srp_init</div>
<div>&nbsp; &nbsp; self.sink.set_time_unknown_pps(uhd.time_spec())</div>
<div>&nbsp; File "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_sw=
ig.py", line 4814, in set_time_unknown_pps</div>
<div>&nbsp; &nbsp; return _uhd_swig.usrp_sink_sptr_set_time_unknown_pps(self=
, time_spec)</div>
<div>RuntimeError: RuntimeError: fifo ctrl timed out looking for acks</div>
<div>[ERROR] [UHD] Exception caught in safe-call.</div>
<div>&nbsp; in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()</div>
<div>&nbsp; at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl=
.cpp:54</div>
<div>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out looking for=
 acks</div>
<div><br>
</div>
<div style=3D"color:rgb(33,33,33)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calibr=
i,
                sans-serif" style=3D"font-size:11pt"><b>From:</b> Marcus D. L=
eech
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">&=
lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Tuesday, June 1, 2021 12:35 AM<br>
<b>To:</b> Skyvalakis Konstantinos; <a class=3D"moz-txt-link-abbreviated" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: USRP N200</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 05/31/2021 03:17 PM, Skyvalakis Konstantin=
os wrote:<br>
</div>
<blockquote type=3D"cite">
<p>Ok, I did the upgrade and all the necessary rebuilds.<br>
</p>
<p><br>
</p>
<p>The error persists this time however with more information.<br>
</p>
<p><br>
</p>
<div>RuntimeError: RuntimeError: fifo ctrl timed out looking for acks</div>
<div>[ERROR] [UHD] Exception caught in safe-call.</div>
<div>&nbsp; in virtual usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl()</div>
<div>&nbsp; at /home/telecomg5/repos/uhd/host/lib/usrp/usrp2/usrp2_fifo_ctrl=
.cpp:54</div>
<div>this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl timed out looking for=
 acks=E2=80=8B<br>
</div>
<p><br>
</p>
<br>
</blockquote>
Also, when you have a TX/RX scenario like this, for some hardware, you need t=
o have as many TX channels as RX channels.<br>
<br>
So, establish your "sink" such that it talks to both devices, and then just s=
tuff the buffer with 0s for the channel you're not using.<br>
<br>
<br>
</div>
</div>
</div>
</div>
</blockquote>
<br>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-47F40923-04B6-4201-BEB5-14D4CF58531E--

--===============8177972482699628172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8177972482699628172==--
