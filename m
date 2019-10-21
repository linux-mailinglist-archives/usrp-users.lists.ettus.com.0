Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE17DF2D4
	for <lists+usrp-users@lfdr.de>; Mon, 21 Oct 2019 18:20:16 +0200 (CEST)
Received: from [::1] (port=56414 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMaPm-0000Gw-RY; Mon, 21 Oct 2019 12:20:14 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:43714)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1iMaPi-0008TK-RY
 for usrp-users@lists.ettus.com; Mon, 21 Oct 2019 12:20:10 -0400
Received: by mail-qt1-f180.google.com with SMTP id t20so21842488qtr.10
 for <usrp-users@lists.ettus.com>; Mon, 21 Oct 2019 09:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=ctarXqoX3metgYupF7X7fDq8+40DCT1DnArqbTzHQWQ=;
 b=M7ief3X4xinh5jJRXbzQnZZoI3ZdNJ5CMdBse1RtFZLdQGAILpaQJrjL2V561NpbYh
 LURvc5bY0UidCusGbXc/HkNwRDSlMU2skQzveOEJlnPHQIOUcFbysIHNEOPvTfRks5Jp
 vMMk8zQZzz0p/Q/j7N9U70BlubwxTQ8iZEdfUDMz43eYnGeU7v2GUvYUodMugTVKTmEh
 ut9xILR9xQP80UJE1kzEDSMSHqmC4JhaO/pgT2lT4vAq2mlsWvGKi6hMthhQAXKGh9ZH
 gmEJ6SkWc0Wtj05MJRyAkTHqaAG+1KzwxtUTzek2g1XBQqBM+DcJnZXvOBJQVNSISYmy
 hcsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=ctarXqoX3metgYupF7X7fDq8+40DCT1DnArqbTzHQWQ=;
 b=I4pVbeuYZxT2BPDEHYja2u6CFsKIM+fZVgKopt7e7kRwNkwYSLhIf6LC0OuI4b5ptY
 ddFifxyIoWciUAmH+jVxGF84lkfv38Ae4EUnPWVJE/pNNv7LlU3XPyM9/GDIWDpA2rDv
 Ox5gpFdt72+FHZ9a8wgiUW5x8/Q1IbcXILdKDtkItAZ0/2ZkcUN5W5p/srejhGZAvyWa
 VWPf+0BH24urdAP2FFQG+HfXBPXVg9iGOp60AzOdtIAdJMnaTwDSBwOphQaTytN/5vXV
 V+yNRcK2NdHbHh8B1ap6uAhmMykGbBnNZr6yohol2vdLUhxhWMFZC9NnsjNsLU9JnsFg
 IBcg==
X-Gm-Message-State: APjAAAXzo3bCFRd6HVuV/OYOqIArfzwIeKv0t1xiRURTcFrrq72PPf2T
 QPaiWjwp+byg338NY3jhyUq8eSNF+gCRKic0PBV6oqIo
X-Google-Smtp-Source: APXvYqwdci1FsfDHCYVh7U9v7qaIIbcwjbvSToItHCQg30JmIU4lniWnZO2aw0fR4zkAE3t2B+5uenclBhWLhiV26B4=
X-Received: by 2002:a05:6214:110c:: with SMTP id
 e12mr24788371qvs.164.1571674770115; 
 Mon, 21 Oct 2019 09:19:30 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
 <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
 <CANQ3h39YJO_iNBdg8_Psx8fHoZGo-aJsESJTBRVf0G1-enZAkw@mail.gmail.com>
 <CAGNhwTP9xwKbDUN49knKmdPzu-yo3rwfzbnvx3YqLuwV3+jyVg@mail.gmail.com>
 <CANQ3h3-6yNAt2v35kUR1z9sNhu7_6M1h3ZsANpDMpueksf2b1w@mail.gmail.com>
 <CAGNhwTP7QX-fTNWNwCKsp0t8d072ovECMA9Z3JMEYyhozkinnA@mail.gmail.com>
 <CANQ3h3_guExuKAV6gqNjEuaVLiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com>
In-Reply-To: <CANQ3h3_guExuKAV6gqNjEuaVLiOMYL_WaqQoPL655HYRs3_0TA@mail.gmail.com>
X-Google-Sender-Delegation: michael.dickens@ettus.com
Date: Mon, 21 Oct 2019 12:18:54 -0400
X-Google-Sender-Auth: pVdXT-8f3yEk4MMN6wLTGsj0pdE
Message-ID: <CACSOXP0EnmmQqMA8srL_5+MrA-8pR5pHcrB10cks_ziY9t=L7Q@mail.gmail.com>
To: Saeid Hashemi <saeidh@gmail.com>
Subject: Re: [USRP-users] uhd_fft failure
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
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2038858151718499871=="
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

--===============2038858151718499871==
Content-Type: multipart/alternative; boundary="000000000000602c3b05956e0c8d"

--000000000000602c3b05956e0c8d
Content-Type: text/plain; charset="UTF-8"

Hi Saeid - Not sure what's going on with your GR install ... did you do
"sudo make install" after doing "make"? Did you do "sudo ldconfig" after
installing?

It looks like you need to install "python-sip" to get around this latest
issue. Same basic method as "python-six", whatever that was that you did
successfully. - MLD

On Fri, Oct 18, 2019 at 3:19 PM Saeid Hashemi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Okay, so installing python-six fixed that, and I was able to install
> 3.7.13.5 from source.
> The sample apps like uhd_fft are not in the path like they used to be with
> binary installation. And trying it from the apps folder gives me:
>
> nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd_fft
> Traceback (most recent call last):
>   File "/home/nuc03/gnuradio/gr-uhd/apps/uhd_fft", line 39, in <module>
>     import sip
> ImportError: No module named sip
>
>
> On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens <
> michael.dickens@ettus.com> wrote:
>
>> Yes sorry about the GR37 release version: 3.7.13.5 is the correct on.
>> Installing Py27-six should be pretty straight forward & should allow you to
>> proceed with that install. GR38 has it's own set of dependencies, some of
>> which overlap with GR37 and some of which don't. You'll want to follow the
>> install guide for your OS to get those dependencies. Good luck! - MLD
>>
>> On Wed, Oct 16, 2019 at 3:02 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>
>>> Hi Michael,
>>>
>>> The gnuradio git repository does not have a tag for v3.17.14.5, and
>>> using v3.7.13.5 gives me:
>>>
>>> -- Python checking for six - python 2 and 3 compatibility library
>>> -- Python checking for six - python 2 and 3 compatibility library - not
>>> found
>>> CMake Error at volk/CMakeLists.txt:98 (message):
>>>   six - python 2 and 3 compatibility library required to build VOLK
>>>
>>>
>>> -- Configuring incomplete, errors occurred!
>>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log".
>>> See also "/home/nuc03/gnuradio/build/CMakeFiles/CMakeError.log".
>>>
>>>
>>> Checking out tag v3.8.0.0 results in Cmake dependency of 3.8 and up, so
>>> I need to install that manually.
>>>
>>>
>>> On Sat, Oct 12, 2019 at 11:02 AM Michael Dickens <
>>> michael.dickens@ettus.com> wrote:
>>>
>>>> OK. Thanks for the info Saeid. I'll look into creating a VM using
>>>> Ubuntu 16.04.1 to see what happens. - MLD
>>>>
>>>> On Fri, Oct 11, 2019 at 4:47 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>>
>>>>> It's Ubuntu 16.04.1, but yes, I will follow the source build
>>>>> instructions.
>>>>>
>>>>> On Fri, Oct 11, 2019 at 3:11 PM Michael Dickens <
>>>>> michael.dickens@ettus.com> wrote:
>>>>>
>>>>>> Hi Saeid - Thanks for the followup. I totally agree that if you just
>>>>>> "sudo apt install gnuradio", compatible versions should be installed. Are
>>>>>> you using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
>>>>>> source, you can follow instructions such as the GR recommended way here <
>>>>>> https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>>>>>> >. I have an Ubuntu 18.04 install that went very smoothly using this guide,
>>>>>> but maybe the guide is outdated for older Ubuntu; or, our packages need to
>>>>>> be updated for that OS version ... Cheers! - MLD
>>>>>>
>>>>>> On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com>
>>>>>> wrote:
>>>>>>
>>>>>>> I will follow your advice, but it's worth mentioning I simply did
>>>>>>> apt-get gnuradio and should therefore have a compatible version of uhd
>>>>>>> installed automatically as a dependency. I did not install uhd separately.
>>>>>>>
>>>>>> --
>>>>>> Michael Dickens
>>>>>> Ettus Research Technical Support
>>>>>> Email: support@ettus.com
>>>>>> Web: https://ettus.com/
>>>>>>
>>>>>
>>>>
>>>> --
>>>> Michael Dickens
>>>> Ettus Research Technical Support
>>>> Email: support@ettus.com
>>>> Web: https://ettus.com/
>>>>
>>>
>>
>> --
>> Michael Dickens
>> Ettus Research Technical Support
>> Email: support@ettus.com
>> Web: https://ettus.com/
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000602c3b05956e0c8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Saeid - Not sure what&#39;s going on with your GR install ..=
. did you do &quot;sudo make install&quot; after doing &quot;make&quot;? Di=
d you do &quot;sudo ldconfig&quot; after installing?</div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">It looks like y=
ou need to install &quot;python-sip&quot; to get around this latest issue. =
Same basic method as &quot;python-six&quot;, whatever that was that you did=
 successfully. - MLD</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Oct 18, 2019 at 3:19 PM Saeid Hashemi via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Okay, so installing python-six fixed that, an=
d I was able to install 3.7.13.5 from source.<div>The sample apps like uhd_=
fft are not in the path like they used to be with binary installation. And =
trying it from the apps folder gives me:</div><div><br></div><blockquote st=
yle=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><font face=3D"=
monospace">nuc03@nuc03:/usr/local/bin$ /home/nuc03/gnuradio/gr-uhd/apps/uhd=
_fft</font></div><div><font face=3D"monospace">Traceback (most recent call =
last):</font></div><div><font face=3D"monospace">=C2=A0 File &quot;/home/nu=
c03/gnuradio/gr-uhd/apps/uhd_fft&quot;, line 39, in &lt;module&gt;</font></=
div><div><font face=3D"monospace">=C2=A0 =C2=A0 import sip</font></div><div=
><font face=3D"monospace">ImportError: No module named sip</font></div></bl=
ockquote></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Oct 17, 2019 at 10:26 AM Michael Dickens &lt;<a href=3D"ma=
ilto:michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Yes sorry about the GR37 release version: 3.7.13.5 is=
 the correct on. Installing Py27-six should be pretty straight forward &amp=
; should allow you to proceed with that install. GR38 has it&#39;s own set =
of dependencies, some of which overlap with GR37 and some of which don&#39;=
t. You&#39;ll want to follow the install guide for your OS to get those dep=
endencies. Good=C2=A0luck! - MLD</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 16, 2019 at 3:02 PM Saeid=
 Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi Michael,<div><br></div><div>The gnuradio git re=
pository does not have a tag for v3.17.14.5, and using v3.7.13.5 gives me:<=
/div><div><br></div><blockquote style=3D"margin:0px 0px 0px 40px;border:non=
e;padding:0px"><div><font size=3D"1" face=3D"monospace">-- Python checking =
for six - python 2 and 3 compatibility library</font></div><div><font size=
=3D"1" face=3D"monospace">-- Python checking for six - python 2 and 3 compa=
tibility library - not found</font></div><div><font size=3D"1" face=3D"mono=
space">CMake Error at volk/CMakeLists.txt:98 (message):</font></div><div><f=
ont size=3D"1" face=3D"monospace">=C2=A0 six - python 2 and 3 compatibility=
 library required to build VOLK</font></div><div><font size=3D"1" face=3D"m=
onospace"><br></font></div><div><font size=3D"1" face=3D"monospace"><br></f=
ont></div><div><font size=3D"1" face=3D"monospace">-- Configuring incomplet=
e, errors occurred!</font></div><div><font size=3D"1" face=3D"monospace">Se=
e also &quot;/home/nuc03/gnuradio/build/CMakeFiles/CMakeOutput.log&quot;.</=
font></div><div><font size=3D"1" face=3D"monospace">See also &quot;/home/nu=
c03/gnuradio/build/CMakeFiles/CMakeError.log&quot;.</font></div></blockquot=
e><div><br></div><div>Checking out tag v3.8.0.0 results in Cmake dependency=
 of 3.8 and up, so I need to install that manually.</div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sat, Oct 12, 2019 at 11:02 AM Michael Dickens &lt;<a href=3D"mailto:michael=
.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">OK. Thanks for the info Saeid. I&#39;ll look into creating a VM using =
Ubuntu 16.04.1 to see what happens. - MLD</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 4:47 PM Sa=
eid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeid=
h@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">It&#39;s Ubuntu 16.04.1, but yes, I will follow=
 the source build instructions.</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 3:11 PM Michael Dick=
ens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">mich=
ael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Than=
ks for the followup. I totally agree that if you just &quot;sudo apt instal=
l gnuradio&quot;, compatible versions should be installed. Are you using Ub=
untu 16.04.6 LTS (Xenial Xerus)? If you choose to install from source, you =
can follow instructions such as the GR recommended way here &lt;=C2=A0<a hr=
ef=3D"https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.=
04.29" target=3D"_blank">https://wiki.gnuradio.org/index.php/UbuntuInstall#=
Xenial_Xerus_.2816.04.29</a> &gt;. I have an Ubuntu=C2=A018.04 install that=
 went very=C2=A0smoothly using this guide, but maybe the guide is outdated =
for older Ubuntu; or, our packages need to be updated for that OS version .=
.. Cheers! - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi &lt;<a href=
=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr">I will follow your advice, but it&#39;s worth mentioning I simply did =
apt-get gnuradio and should therefore have a compatible version of uhd inst=
alled automatically as a dependency. I did not install uhd separately.</div=
></blockquote></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=
=3D"ltr">Michael Dickens<br>Ettus Research Technical Support<br>Email: <a h=
ref=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br=
>Web: <a href=3D"https://ettus.com/" target=3D"_blank">https://ettus.com/</=
a></div></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus Research T=
echnical Support<br>Email: <a href=3D"mailto:support@ettus.com" target=3D"_=
blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com/" target=
=3D"_blank">https://ettus.com/</a></div></div></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000602c3b05956e0c8d--


--===============2038858151718499871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2038858151718499871==--

