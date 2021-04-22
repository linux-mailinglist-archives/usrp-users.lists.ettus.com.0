Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8424D36790D
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 06:58:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 41892384538
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 00:58:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="XNbq5FjS";
	dkim-atps=neutral
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 404D138400D
	for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 00:58:02 -0400 (EDT)
Received: by mail-vs1-f50.google.com with SMTP id 66so22275079vsk.9
        for <usrp-users@lists.ettus.com>; Wed, 21 Apr 2021 21:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kSjxPV/2UNXbNIZJYSasR66Z2G9ddRRjkEm/IcZbsHk=;
        b=XNbq5FjSkF2Uk00teliB/3M2DEoU6myPF0O2rl9DLGjec7CwQ1U873VklztLNIBViS
         kGs2FZYu+GIjiMCiNlBIYG+0ZHpE8QdZ1weNPs179DnCmfvKpiRaRf3HCzEyz52ERODC
         6crHtGB63zyiynbXEVGT3Sk1bfbqopNISZmjaSg55zK29jhCvZfrucyDVZ5fofhuCk+v
         PVc5KQu9dPbXuuC4M3VcHzGEuUcBt5MoRkiJ7GZy4nFhNe9Z0acn4HJ9XePJE4Ggn0Ft
         CqPhtPWJ+ZhwXhmtb5QLtCk9SmdMrPixWoJysRS49ytNpma2oV8uqc6tDzxFuP4qFOrJ
         mkHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kSjxPV/2UNXbNIZJYSasR66Z2G9ddRRjkEm/IcZbsHk=;
        b=EY9ecdYUr4+JfXj8sLOkhRIhVF2kQVLZe2n4SRYk5beq4KXwqAP/L/1qilPqhR9HgN
         DbuxmQ8hY+FLwraMqXSwhal1QwR2mnXPlK/OciZnf+1MYrTE+pk4hCX4OdUoy5sEiKpR
         1kWDF8O/sv684mSNf6xasOdFseJaz6vTOYCRVPrd43kZisuOYiXvflcMv5XsRUVDvKS3
         wGpAxGHk/gqCF0tyezkAgCTiiGbVo2YLdv8L5Dx7fhUFL9QyNbRBccmeMPYNOnbgLJCS
         zgunKNMiFV0deHmp+oACORlqr/ih4XE4tgmGuAvgDN+70SZbm8Z3ijvqP3UuY8rhHghU
         2SqQ==
X-Gm-Message-State: AOAM533Urwq+siOK4DAqRJtxKtZu+TS7EhmcKO+Qvu1FMeyaTtQjQdBU
	5HqtKFuXA/PzKOInwCOEiE49vbGiMnL/H0y26rRxTQ==
X-Google-Smtp-Source: ABdhPJysvj9/lf2QJWmxvBeHQ+epOG+ieujXyzTM97g24kdfWoBjIcxmx8kCel0QfKt7PUKCEPH53oQBydkygqZ28lI=
X-Received: by 2002:a67:b447:: with SMTP id c7mr1035282vsm.30.1619067481643;
 Wed, 21 Apr 2021 21:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com>
 <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com> <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <20210420111632.lixq2x3mcryavb6d@barbe> <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
 <20210420131921.g6dloxbg7o7valro@barbe> <CALNMZ8UWY6SB+X=wOJpzhB6GfxVYyvaZc4A6onYBz3iaefp5tQ@mail.gmail.com>
 <20210420151340.mrvuxdh25wvtd6oz@barbe> <CALNMZ8WtYdpxN_-g2AO_3hqWRORJ3f0Vf81qdPFf2QJgFFAP=g@mail.gmail.com>
 <607F6B77.6020301@gmail.com> <CALNMZ8UQ8RyEozohS6i_K-7_+5p7NQB5fLOJito4=7u+r-bYKQ@mail.gmail.com>
 <CALNMZ8VwCH805F1NU0uq032-4HCV7fLx5tzo0Tys0OMH2tME=w@mail.gmail.com>
In-Reply-To: <CALNMZ8VwCH805F1NU0uq032-4HCV7fLx5tzo0Tys0OMH2tME=w@mail.gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Thu, 22 Apr 2021 14:57:50 +1000
Message-ID: <CALNMZ8Wpmv6ubfJ-XYVipzFjg2AQ5s66ceTkFHjoFScuGeEzrg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: N2HMZE443X5VV4KU7YBHORPS4UCFNN7F
X-Message-ID-Hash: N2HMZE443X5VV4KU7YBHORPS4UCFNN7F
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N2HMZE443X5VV4KU7YBHORPS4UCFNN7F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1933093920210488891=="

--===============1933093920210488891==
Content-Type: multipart/alternative; boundary="0000000000001c707605c08886f7"

--0000000000001c707605c08886f7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

Just to let you know that I have finally managed to get GNU Radio working
with my USRP again.

Based on advice from the GNU Radio mailing list, I installed UHD 3.15 (with
Python API) and GNU Radio maint-3.8 (which installed as
v3.8.2.0-112-ge20ffa3c).  Both were installed from source, without using a
virtual environment.  I fired up gnuradio-companion at the end, and bingo,
I'm back in business!  No errors, no warnings, old flowgraphs still working=
.

A big shout out to Ryan Volz at the GNU Radio discussion list for his
helpful hints.

Regards,
Brendan.



On Wed, Apr 21, 2021 at 4:49 PM Brendan Horsfield <
brendan.horsfield@vectalabs.com> wrote:

> Just a quick follow up to close out this thread (for now):
>
> I have run "sudo make uninstall" and "sudo make clean" on my Volk & GNU
> Radio installations, and manually deleted every remaining file & folder o=
n
> my laptop that contained the string "gnuradio" in their titles.  I have
> also deleted every libuhd file I could find, apart from those related to
> UHD v4.0.0.0.
>
> I then reinstalled Volk & GNU Radio from source.  This process was
> completed with no errors, apart from a "no tests found" message when I
> tried to run "make test" on the GNU Radio build.
>
> The good news is that I can now open GNU Radio Companion from the
> terminal.  The bad news is that it generates a lot of warning messages, a=
nd
> won't run any flowgraphs -- even very simple ones.
>
> Going forward, I will take this issue up with the GNU Radio mailing list,
> as I don't believe the UHD driver has anything to do with my current crop
> of problems.
>
> Thank you all for your help and patience with this novice GNU Radio user!
>
> Cheers,
> Brendan.
>
>
>
>
> On Wed, Apr 21, 2021 at 10:33 AM Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
>> Hi Marcus,
>>
>> >>On Ubuntu 18.04, Gnu Radio and UHD installed from the official
>> repositories "just works",
>> >>but won't have the Python API you're looking for.
>>
>> Yes, my attempt to add the UHD Python API is what started all this.  I
>> originally had GNU Radio & UHD working well together, but I really neede=
d
>> (and still need) the UHD Python API for my main project.  When I rebuilt
>> UHD to add this feature, I broke GNU Radio.  (However, the Python API wo=
rks
>> great!)
>>
>> >>If you're doing a lot of this "back and forth" from various package
>> repositories, the
>> >>official repositories, and source-based installs, you really need to b=
e
>> a "Linux Geek"
>> >>in order not to create the "tangle" that you've created for yourself.
>>
>> I hear what you are saying -- I am definitely on a steep
>> learning curve, and have taken some missteps.  However, I need to get th=
is
>> working somehow.  If I can roll back my system to a GNU Radio-free state=
,
>> and then install the latest version of GNU Radio from source as per the
>> instructions in
>> https://wiki.gnuradio.org/index.php/InstallingGR#From_Source, surely the
>> system should be pretty close to working?
>>
>> Brendan.
>>
>>
>>
>> On Wed, Apr 21, 2021 at 10:02 AM Marcus D. Leech <patchvonbraun@gmail.co=
m>
>> wrote:
>>
>>> On 04/20/2021 07:07 PM, Brendan Horsfield wrote:
>>>
>>> Hi C=C3=A9dric,
>>>
>>> Results of dpkg queries are given below.  It looks like those files are
>>> not part of any installed packages:
>>>
>>> $ dpkg -S "libuhd.so.003.010.003"  -->  dpkg-query: no path found
>>> matching pattern *libuhd.so.003.010.003*
>>> $ dpkg -S "$(basename
>>> "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")"  -->  dpkg-query: n=
o
>>> path found matching pattern *libuhd.so.003.010.003*
>>> $ dpkg -S "libuhd.so.3.15.0"  -->  dpkg-query: no path found matching
>>> pattern *libuhd.so.3.15.0*
>>> $ dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0")"
>>> -->  dpkg-query: no path found matching pattern *libuhd.so.3.15.0*
>>>
>>> What I find interesting is that when I run "gnuradio-companion" from th=
e
>>> terminal, it attempts to load my 2 most recent flowgraphs
>>> "save_rx_samples_to_file.grc" and "spectrum_analyser_two_chan.grc", eve=
n
>>> though I have never opened them in this version of gnuradio-companion.
>>> This suggests that the built-from-source installation has been polluted=
 by
>>> a config file or history file from the Ubuntu Software version of GRC t=
hat
>>> I installed over the top of the built-from-source version.
>>>
>>> The various versions all share the same .gnuradio directory in your hom=
e
>>> directory, so I would expect some tripping over
>>>   each others feet.
>>>
>>>
>>> I think I will try and scrub my system of everything related to GNU
>>> Radio this morning, and reinstall it from source one more time.  If it
>>> still doesn't work, I will take it up with the GNU Radio mailing
>>> list...........or possibly switch to Matlab!!  :)
>>>
>>> On Ubuntu 18.04, Gnu Radio and UHD installed from the official
>>> repositories "just works", but won't have the Python API you're looking=
 for.
>>>
>>> Your problems have basically been caused by switching between various
>>> install methods, various versions, and not really having
>>>   a good understanding of what is going on underneath.  The
>>> package-management system cannot know nor make any rational
>>>   decisions about bits and pieces you may have installed from source,
>>> and the install-from-source has very little insight into what
>>>   you might have installed from the package management system.  Once yo=
u
>>> venture into "install from source" territory, you're
>>>   basically doing the same tasks that a systems software developer woul=
d
>>> do, and the tools necessarily assume that you know
>>>   how to take on that role.  If you're doing a lot of this "back and
>>> forth" from various package repositories, the official repositories,
>>>   and source-based installs, you really need to be a "Linux Geek" in
>>> order not to create the "tangle" that you've created for yourself.
>>>
>>>
>>>
>>> Thanks & Regards,
>>> Brendan.
>>>
>>>
>>>
>>> On Wed, Apr 21, 2021 at 1:14 AM C=C3=A9dric Hannotier via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi Brendan,
>>>>
>>>> On 21/04/21 00:01, Brendan Horsfield wrote:
>>>> >> I do not get this part. What do you mean by "reinstalled"?
>>>> >> Did you installed GNU Radio from source or from Ubuntu Software?
>>>> >> If you download the source, build and install it (following GNU Rad=
io
>>>> >> wiki),
>>>> >> then you cannot install it using Ubuntu Software (or apt) afterward=
s.
>>>> >> It is one or the other, not both.
>>>> >
>>>> > Hmm.  I have been assuming all this time that GNU Radio Companion is
>>>> an
>>>> > optional GUI front end for GNU Radio, which must be installed
>>>> separately.
>>>> >
>>>> > In my case, I definitely installed GNU Radio from source.  However,
>>>> when
>>>> > that was finished, I then went into Ubuntu Software and installed GN=
U
>>>> Radio
>>>> > Companion, which placed an icon on my toolbar (which is how I launch
>>>> the
>>>> > application).  I am guessing this was the wrong thing to do?
>>>>
>>>> Yep, wrong way.
>>>> gnuradio-companion is provided by gnuradio. It is not separated.
>>>> Most of the time,
>>>> doing "from source" installs everything under /usr/local/,
>>>> while "from binaries" installs everything under /usr/.
>>>> If you install both, you end up with 2 versions.
>>>> Best case scenario is one is masking the other.
>>>> Worst case scenario is clash between the two.
>>>>
>>>> > FYI -- If I open a terminal and type "gnuradio-companion", the GUI
>>>> never
>>>> > launches, and all I get is the following error message:
>>>> >
>>>> > $ gnuradio-companion
>>>> > <<< Welcome to GNU Radio Companion 3.9.0.0 >>>
>>>> >
>>>> > Block paths:
>>>> > /usr/local/share/gnuradio/grc/blocks
>>>> >
>>>> > Loading:
>>>> > "/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to_file.gr=
c"
>>>> > >>> Converting from XML
>>>> > /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't
>>>> > resolve package from __spec__ or __package__, falling back on
>>>> __name__ and
>>>> > __path__
>>>> >   return f(*args, **kwds)
>>>> > >>> Done
>>>> >
>>>> > Loading:
>>>> >
>>>> "/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_chan.g=
rc"
>>>> > >>> Converting from XML
>>>> > Segmentation fault (core dumped)
>>>>
>>>> I do not know why it segfaults.
>>>> If it does not solve by itself after solving the other parts,
>>>> you could try GNU Radio 3.8 or ask on GNU Radio ML.
>>>>
>>>> > To answer your other questions:
>>>> >
>>>> > If I type "/sbin/ldconfig -p | grep -F libuhd", here is what I get:
>>>> > libuhd.so.4.0.0 (libc6,x86-64) =3D> /usr/local/lib/libuhd.so.4.0.0
>>>> > libuhd.so.3.15.0 (libc6,x86-64) =3D>
>>>> > /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0
>>>> > libuhd.so.003.010.003 (libc6,x86-64) =3D>
>>>> > /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003
>>>> > libuhd.so (libc6,x86-64) =3D> /usr/local/lib/libuhd.so
>>>> >
>>>> > Finally, when I type dpkg -S "(libuhd.so.003.010.003
>>>> > "/usr/lib/x86_64-linux-gnu")", I get the response
>>>> > dpkg-query: no path found matching pattern *(libuhd.so.003.010.003
>>>> > /usr/lib/x86_64-linux-gnu)*
>>>>
>>>> Sorry if I was not clear, use:
>>>> dpkg -S "libuhd.so.003.010.003"
>>>>
>>>> or:
>>>> dpkg -S "$(basename "/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003")=
"
>>>>
>>>> I do not feed the fullpath to "dpkg -S" because with the /usr/ merge,
>>>> dpkg can be confused.
>>>>
>>>> Could you do the same for libuhd.so.3.15.0?
>>>>
>>>> Regards
>>>> --
>>>>
>>>> C=C3=A9dric Hannotier
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--0000000000001c707605c08886f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>Just to let you know=
 that I have finally managed to get GNU Radio working with my USRP again.</=
div><div><br></div><div>Based on advice from the GNU Radio mailing list, I =
installed UHD 3.15 (with Python API) and GNU Radio maint-3.8 (which install=
ed as v3.8.2.0-112-ge20ffa3c).=C2=A0 Both were installed from source, witho=
ut using a virtual environment.=C2=A0 I fired up gnuradio-companion at the =
end, and bingo, I&#39;m back in business!=C2=A0 No errors, no warnings, old=
 flowgraphs still working.</div><div><br></div><div>A big shout out to Ryan=
 Volz at the GNU Radio discussion list for his helpful hints.</div><div><br=
></div><div>Regards,</div><div>Brendan.</div><div><br></div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Apr 21, 2021 at 4:49 PM Brendan Horsfield &lt;<a href=3D"mailto:bre=
ndan.horsfield@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">Just a quick follow up to close out this thread (for n=
ow):<div><br></div><div>I have run &quot;sudo make uninstall&quot; and &quo=
t;sudo make clean&quot; on my Volk &amp;=C2=A0GNU Radio installations, and =
manually deleted every remaining file &amp; folder on my laptop that contai=
ned the string &quot;gnuradio&quot; in their titles.=C2=A0 I have also dele=
ted every libuhd file I could find, apart from those related to UHD v4.0.0.=
0.</div><div><br></div><div>I then reinstalled Volk &amp; GNU Radio from so=
urce.=C2=A0 This process was completed with no errors, apart from a &quot;n=
o tests found&quot; message when I tried to run &quot;make test&quot; on th=
e GNU Radio build.</div><div><br></div><div>The good news is that I can now=
 open GNU Radio Companion from the terminal.=C2=A0 The bad news is that it =
generates a lot of warning messages, and won&#39;t run any flowgraphs -- ev=
en very simple ones.</div><div><br></div><div>Going forward, I will take th=
is issue up with the GNU Radio mailing list, as I don&#39;t believe the UHD=
 driver has anything to do with my current crop of problems.<br></div><div>=
<br></div><div>Thank you all for your help and patience with this novice GN=
U Radio user!</div><div><br></div><div>Cheers,</div><div>Brendan.</div><div=
><br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 21, 2021 at 10:33 AM B=
rendan Horsfield &lt;<a href=3D"mailto:brendan.horsfield@vectalabs.com" tar=
get=3D"_blank">brendan.horsfield@vectalabs.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Marcus,<d=
iv><br></div><div>&gt;&gt;On Ubuntu 18.04, Gnu Radio and UHD installed from=
 the official repositories &quot;just works&quot;,=C2=A0</div><div>&gt;&gt;=
but won&#39;t have the Python API you&#39;re looking for.</div><div><br></d=
iv><div>Yes, my attempt to add the UHD Python API is what started all this.=
=C2=A0 I originally had GNU Radio &amp; UHD working well together, but I re=
ally needed (and still need) the UHD Python API for my main project.=C2=A0 =
When I rebuilt UHD to add this feature, I broke GNU Radio.=C2=A0 (However, =
the Python API works great!)</div><div><br></div><div>&gt;&gt;If you&#39;re=
 doing a lot of this &quot;back and forth&quot; from various package reposi=
tories, the</div><div>&gt;&gt;official repositories, and source-based insta=
lls, you really need to be a &quot;Linux Geek&quot;=C2=A0</div><div>&gt;&gt=
;in order not to create the &quot;tangle&quot; that you&#39;ve created for =
yourself.</div><div><br></div><div>I hear what you are saying -- I am defin=
itely on a steep learning=C2=A0curve,=C2=A0and have taken some missteps.=C2=
=A0 However, I need to get this working somehow.=C2=A0 If I can roll back m=
y system to a GNU Radio-free state, and then install the latest version of =
GNU Radio from source as per the instructions in=C2=A0<a href=3D"https://wi=
ki.gnuradio.org/index.php/InstallingGR#From_Source" target=3D"_blank">https=
://wiki.gnuradio.org/index.php/InstallingGR#From_Source</a>, surely the sys=
tem should be pretty close to working?=C2=A0</div><div><br></div><div>Brend=
an.</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 21, 2021 at 10:02 AM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/20/2021 07:07 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi C=C3=A9dric,
        <div><br>
        </div>
        <div>Results of dpkg queries are given below.=C2=A0 It looks like
          those files are not part of any installed packages:</div>
        <div><br>
        </div>
        <div>$ dpkg -S &quot;libuhd.so.003.010.003&quot;=C2=A0 --&gt;=C2=A0=
 dpkg-query: no
          path found matching pattern *libuhd.so.003.010.003*<br>
        </div>
        <div>$ dpkg -S &quot;$(basename
          &quot;/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003&quot;)&quot=
;=C2=A0 --&gt;=C2=A0
          dpkg-query: no path found matching pattern
          *libuhd.so.003.010.003*<br>
        </div>
        <div>$ dpkg -S &quot;libuhd.so.3.15.0&quot;=C2=A0 --&gt;=C2=A0 dpkg=
-query: no path
          found matching pattern *libuhd.so.3.15.0*<br>
        </div>
        <div>$ dpkg -S &quot;$(basename
          &quot;/usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0&quot;)&quot;=C2=
=A0 --&gt;=C2=A0
          dpkg-query: no path found matching pattern *libuhd.so.3.15.0*<br>
        </div>
        <div><br>
        </div>
        <div>What I find interesting is that when I run
          &quot;gnuradio-companion&quot; from the terminal, it attempts to =
load my
          2 most recent flowgraphs &quot;save_rx_samples_to_file.grc&quot; =
and
          &quot;spectrum_analyser_two_chan.grc&quot;, even though I have ne=
ver
          opened them in this version of gnuradio-companion.=C2=A0 This
          suggests that the built-from-source installation has been
          polluted by a config file or history file from the Ubuntu
          Software version of GRC that I installed over the top of the
          built-from-source version.</div>
      </div>
    </blockquote>
    The various versions all share the same .gnuradio directory in your
    home directory, so I would expect some tripping over<br>
    =C2=A0 each others feet.<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>I think I will try and scrub my system of everything
          related to GNU Radio this morning, and reinstall=C2=A0it from
          source one more time.=C2=A0 If it still doesn&#39;t work, I will =
take
          it up with the GNU Radio mailing list...........or possibly
          switch to Matlab!!=C2=A0 :)</div>
      </div>
    </blockquote>
    On Ubuntu 18.04, Gnu Radio and UHD installed from the official
    repositories &quot;just works&quot;, but won&#39;t have the Python API =
you&#39;re
    looking for.<br>
    <br>
    Your problems have basically been caused by switching between
    various install methods, various versions, and not really having<br>
    =C2=A0 a good understanding of what is going on underneath.=C2=A0 The
    package-management system cannot know nor make any rational<br>
    =C2=A0 decisions about bits and pieces you may have installed from
    source, and the install-from-source has very little insight into
    what<br>
    =C2=A0 you might have installed from the package management system.=C2=
=A0 Once
    you venture into &quot;install from source&quot; territory, you&#39;re<=
br>
    =C2=A0 basically doing the same tasks that a systems software developer
    would do, and the tools necessarily assume that you know<br>
    =C2=A0 how to take on that role.=C2=A0 If you&#39;re doing a lot of thi=
s &quot;back and
    forth&quot; from various package repositories, the official repositorie=
s,<br>
    =C2=A0 and source-based installs, you really need to be a &quot;Linux G=
eek&quot; in
    order not to create the &quot;tangle&quot; that you&#39;ve created for =
yourself.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Thanks &amp; Regards,</div>
        <div>Brendan.</div>
        <div>=C2=A0</div>
        <div>=C2=A0</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 21, 2021 at 1:14
          AM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          Brendan,<br>
          <br>
          On 21/04/21 00:01, Brendan Horsfield wrote:<br>
          &gt;&gt; I do not get this part. What do you mean by
          &quot;reinstalled&quot;?<br>
          &gt;&gt; Did you installed GNU Radio from source or from
          Ubuntu Software?<br>
          &gt;&gt; If you download the source, build and install it
          (following GNU Radio<br>
          &gt;&gt; wiki),<br>
          &gt;&gt; then you cannot install it using Ubuntu Software (or
          apt) afterwards.<br>
          &gt;&gt; It is one or the other, not both.<br>
          &gt; <br>
          &gt; Hmm.=C2=A0 I have been assuming all this time that GNU Radio
          Companion is an<br>
          &gt; optional GUI front end for GNU Radio, which must be
          installed separately.<br>
          &gt; <br>
          &gt; In my case, I definitely installed GNU Radio from
          source.=C2=A0 However, when<br>
          &gt; that was finished, I then went into Ubuntu Software and
          installed GNU Radio<br>
          &gt; Companion, which placed an icon on my toolbar (which is
          how I launch the<br>
          &gt; application).=C2=A0 I am guessing this was the wrong thing t=
o
          do?<br>
          <br>
          Yep, wrong way.<br>
          gnuradio-companion is provided by gnuradio. It is not
          separated.<br>
          Most of the time,<br>
          doing &quot;from source&quot; installs everything under /usr/loca=
l/,<br>
          while &quot;from binaries&quot; installs everything under /usr/.<=
br>
          If you install both, you end up with 2 versions.<br>
          Best case scenario is one is masking the other.<br>
          Worst case scenario is clash between the two.<br>
          <br>
          &gt; FYI -- If I open a terminal and type
          &quot;gnuradio-companion&quot;, the GUI never<br>
          &gt; launches, and all I get is the following error message:<br>
          &gt; <br>
          &gt; $ gnuradio-companion<br>
          &gt; &lt;&lt;&lt; Welcome to GNU Radio Companion 3.9.0.0
          &gt;&gt;&gt;<br>
          &gt; <br>
          &gt; Block paths:<br>
          &gt; /usr/local/share/gnuradio/grc/blocks<br>
          &gt; <br>
          &gt; Loading:<br>
          &gt;
          &quot;/home/anyone/Documents/Brendan/GNU-Radio/save_rx_samples_to=
_file.grc&quot;<br>
          &gt; &gt;&gt;&gt; Converting from XML<br>
          &gt; /usr/lib/python3.6/importlib/_bootstrap.py:219:
          ImportWarning: can&#39;t<br>
          &gt; resolve package from __spec__ or __package__, falling
          back on __name__ and<br>
          &gt; __path__<br>
          &gt;=C2=A0 =C2=A0return f(*args, **kwds)<br>
          &gt; &gt;&gt;&gt; Done<br>
          &gt; <br>
          &gt; Loading:<br>
          &gt;
&quot;/home/anyone/Documents/Brendan/GNU-Radio/spectrum_analyser_two_chan.g=
rc&quot;<br>
          &gt; &gt;&gt;&gt; Converting from XML<br>
          &gt; Segmentation fault (core dumped)<br>
          <br>
          I do not know why it segfaults.<br>
          If it does not solve by itself after solving the other parts,<br>
          you could try GNU Radio 3.8 or ask on GNU Radio ML.<br>
          <br>
          &gt; To answer your other questions:<br>
          &gt; <br>
          &gt; If I type &quot;/sbin/ldconfig -p | grep -F libuhd&quot;, he=
re is
          what I get:<br>
          &gt; libuhd.so.4.0.0 (libc6,x86-64) =3D&gt;
          /usr/local/lib/libuhd.so.4.0.0<br>
          &gt; libuhd.so.3.15.0 (libc6,x86-64) =3D&gt;<br>
          &gt; /usr/lib/x86_64-linux-gnu/libuhd.so.3.15.0<br>
          &gt; libuhd.so.003.010.003 (libc6,x86-64) =3D&gt;<br>
          &gt; /usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003<br>
          &gt; libuhd.so (libc6,x86-64) =3D&gt; /usr/local/lib/libuhd.so<br=
>
          &gt; <br>
          &gt; Finally, when I type dpkg -S &quot;(libuhd.so.003.010.003<br=
>
          &gt; &quot;/usr/lib/x86_64-linux-gnu&quot;)&quot;, I get the resp=
onse<br>
          &gt; dpkg-query: no path found matching pattern
          *(libuhd.so.003.010.003<br>
          &gt; /usr/lib/x86_64-linux-gnu)*<br>
          <br>
          Sorry if I was not clear, use:<br>
          dpkg -S &quot;libuhd.so.003.010.003&quot;<br>
          <br>
          or:<br>
          dpkg -S &quot;$(basename
          &quot;/usr/lib/x86_64-linux-gnu/libuhd.so.003.010.003&quot;)&quot=
;<br>
          <br>
          I do not feed the fullpath to &quot;dpkg -S&quot; because with th=
e /usr/
          merge,<br>
          dpkg can be confused.<br>
          <br>
          Could you do the same for libuhd.so.3.15.0?<br>
          <br>
          Regards<br>
          -- <br>
          <br>
          C=C3=A9dric Hannotier<br>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000001c707605c08886f7--

--===============1933093920210488891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1933093920210488891==--
