Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E68A980355
	for <lists+usrp-users@lfdr.de>; Sat,  3 Aug 2019 02:04:11 +0200 (CEST)
Received: from [::1] (port=57600 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hthWq-0006PS-BD; Fri, 02 Aug 2019 20:04:08 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:42463)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hthWm-0006KH-A2
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 20:04:04 -0400
Received: by mail-lj1-f181.google.com with SMTP id t28so74349108lje.9
 for <usrp-users@lists.ettus.com>; Fri, 02 Aug 2019 17:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0EB7GisewKCq5Wb+1dNGSp1rRL9KIqZxkFCGQQp+5/Y=;
 b=GJfp3GNJhY42OmqHTOnngzXYwYmMIghaU+KU0Twpu00NW9DbtNpnFwhToQEEifp08N
 iox/rafPm6zCZCuebYQEAcL/JPG5TeSACteLPFfODEcCG1iX3AmyyQ63+E/0dIJ14Has
 Y49NNeAFH+CHHS6EyveyZ5xw9wPmKSidcjCt3VgdctNpG7FJ5yY6ENjgrGJyYiW9Di6m
 mitVMfHsSX9XOuLJ+de8ZSIdN+LlIasoDRsY+GQWCBRT0Juu2dK0+s5WH0qdb1LW+coN
 Eh4+6PhZIuIzUu5LOcbqWxvUAGEdlI24lZtXhu8Y5fnKMsQYqqjwRphpOFw+ywwI+YLt
 /QJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0EB7GisewKCq5Wb+1dNGSp1rRL9KIqZxkFCGQQp+5/Y=;
 b=kZFHBFQzSFh5BptbVHO2vQkio8BIArEDHhzd9Ml9f6hH6+aakGPeDgfH6pmx14STAy
 sIoJVFsyG07E6fJ4dHtLRVrATp+TcMQmd3JBOZxsqk9S1pQNlNkYG5K4w7Xx1/adi/Q2
 IsbZoffHGBRLzSZ9xM1C08qX5RykxQswww4Db6/UkeIUoZsSB7Zacp44kveSGstxiqnV
 qFRmBlLmv8sVjwHBrQu1pd6RxHKHyzAV/gr6lgAZYV4OALtlDt+mUnwYVkeZ3aBwMWln
 ziauHFSjdC//ajBgJ5u02dubJcxZZ+5j0JFaMe79AyUWNbb+SamXVbQQZCoTbMXoOGup
 CyGA==
X-Gm-Message-State: APjAAAXB/eevaT+N/fYD7OpFJhMVZA4nAWMmfyB6SEIleoe+1LAi+g3/
 ixtzoXZoorCNiaz7uaWQfyyYFdoO3td/JU9J2i4=
X-Google-Smtp-Source: APXvYqwZlBntPjwR4EMeU6uK7OevguAOKvdbFqiGgKS6KLrSM7GbPwKFoCrMKcN2BxcUQyrFJFOfZxY+MU/RtpRyIDQ=
X-Received: by 2002:a2e:9b81:: with SMTP id z1mr73139068lji.101.1564790602861; 
 Fri, 02 Aug 2019 17:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3-nEyp_b0aas9fdbHsz+OBMpNWJA0JZd7ABbfjsGmULQw@mail.gmail.com>
 <CANQ3h39nn6QZvWx7RN5gGc7KYJsL+4aon8GZ9ZCqFQVdsKfPsw@mail.gmail.com>
 <CAKJyDkLvUjxD+DaELQxJ4kem1YLQG8NwYKb=RuBNSyw7imn27Q@mail.gmail.com>
In-Reply-To: <CAKJyDkLvUjxD+DaELQxJ4kem1YLQG8NwYKb=RuBNSyw7imn27Q@mail.gmail.com>
Date: Fri, 2 Aug 2019 20:03:10 -0400
Message-ID: <CANQ3h39jOJgmaZeiFvWKtqQSWi2Y27_FAGXL4c6pCBiQcRgvWw@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>
Subject: Re: [USRP-users] UHD install from source with Pybombs failed
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8433190678803151965=="
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

--===============8433190678803151965==
Content-Type: multipart/alternative; boundary="00000000000008125f058f2b34db"

--00000000000008125f058f2b34db
Content-Type: text/plain; charset="UTF-8"

Thanks for your suggestion, I did that and it says numpy is already the
latest version, 1.8.2.
Specifically, printing it out on the terminal gives me:

$ python
Python 2.7.6 (default, Nov 13 2018, 12:45:42)
[GCC 4.8.4] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import numpy
>>> numpy.version.version
'1.8.2'


Is there some reason Pybombs can't see it? Should I just revert to
installing from source?


Thanks,
Saeid

On Fri, Jul 26, 2019 at 6:24 PM Robin Coxe <coxe@quanttux.com> wrote:

> It looks like UHD didn't build because it's missing the Python library
> numpy.   You can try "pip install numpy" and rerunning PyBombs, but to be
> honest you might have better luck starting over and installing from source
> by following these instructions--
>
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux
>
> On Fri, Jul 26, 2019 at 12:28 PM Saeid Hashemi via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Attempting to install boost libraries shows that they are already the
>> latest version:
>>
>> libboost-dev is already the newest version.
>> libboost-all-dev is already the newest version.
>>
>> On Fri, Jul 26, 2019 at 3:26 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>
>>> Hello everyone,
>>>
>>> I've attempted to install UHD using Pybombs, following up on a previous
>>> issue I had due to my first binary install, but this is failing.
>>>
>>> $ pybombs prefix init -a default prefix/default/ -R gnuradio-default
>>>
>>> Results in:
>>>
>>> -- Configuring incomplete, errors occurred!
>>> See also
>>> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeOutput.log".
>>> See also
>>> "/home/saeid/prefix/default/src/uhd/host/build/CMakeFiles/CMakeError.log".
>>> PyBOMBS.Packager.source - ERROR - Configuration failed after running at
>>> least twice.
>>> PyBOMBS.Packager.source - ERROR - Problem occurred while building
>>> package uhd:
>>> Configuration failed
>>> PyBOMBS.install_manager - ERROR - Error installing package uhd. Aborting.
>>>
>>> I have attached the full results, and it seems that it's not finding the
>>> boost library, however I'm not entirely sure.
>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000008125f058f2b34db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your suggestion, I did that and it says numpy i=
s already the latest version, 1.8.2.<div>Specifically, printing it out on t=
he terminal gives me:</div><div><br></div><div>$ python<br>Python 2.7.6 (de=
fault, Nov 13 2018, 12:45:42)<br>[GCC 4.8.4] on linux2<br>Type &quot;help&q=
uot;, &quot;copyright&quot;, &quot;credits&quot; or &quot;license&quot; for=
 more information.<br>&gt;&gt;&gt; import numpy<br>&gt;&gt;&gt; numpy.versi=
on.version<br>&#39;1.8.2&#39;<br></div><div><br></div><div><br></div><div>I=
s there some reason Pybombs can&#39;t see it? Should I just revert to insta=
lling from source?</div><div><br></div><div><br></div><div>Thanks,</div><di=
v>Saeid</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Jul 26, 2019 at 6:24 PM Robin Coxe &lt;<a href=3D"mail=
to:coxe@quanttux.com">coxe@quanttux.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">It looks like UHD d=
idn&#39;t build because it&#39;s missing the Python library numpy.=C2=A0 =
=C2=A0You can try &quot;pip install numpy&quot; and rerunning PyBombs, but =
to be honest you might have better luck starting over and installing from s=
ource by following these instructions--<div><div><div><a href=3D"https://kb=
.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_=
GNU_Radio)_on_Linux" target=3D"_blank">https://kb.ettus.com/Building_and_In=
stalling_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a></d=
iv></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jul 26, 2019 at 12:28 PM Saeid Hashemi via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>Attempting to install boost lib=
raries shows that they are already the latest version:</div><div style=3D"m=
argin-left:40px"><br></div><div style=3D"margin-left:40px">libboost-dev is =
already the newest version.</div><div style=3D"margin-left:40px">libboost-a=
ll-dev is already the newest version.<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 26, 2019 at 3:26=
 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_blank"=
>saeidh@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hello everyone,</div><div><br></div>=
<div>I&#39;ve attempted to install UHD using Pybombs, following up on a pre=
vious issue I had due to my first binary install, but this is failing.</div=
><div><br></div><div style=3D"margin-left:40px">$ pybombs prefix init -a de=
fault prefix/default/ -R gnuradio-default</div><div><br></div><div>Results =
in:</div><div><br></div><div style=3D"margin-left:40px">-- Configuring inco=
mplete, errors occurred!<br>See also &quot;/home/saeid/prefix/default/src/u=
hd/host/build/CMakeFiles/CMakeOutput.log&quot;.<br>See also &quot;/home/sae=
id/prefix/default/src/uhd/host/build/CMakeFiles/CMakeError.log&quot;.<br>Py=
BOMBS.Packager.source - ERROR - Configuration failed after running at least=
 twice.<br>PyBOMBS.Packager.source - ERROR - Problem occurred while buildin=
g package uhd:<br>Configuration failed<br>PyBOMBS.install_manager - ERROR -=
 Error installing package uhd. Aborting.<br></div><div style=3D"margin-left=
:40px"><br></div>I have attached the full results, and it seems that it&#39=
;s not finding the boost library, however I&#39;m not entirely sure.<br><di=
v><div><div><br></div></div></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000008125f058f2b34db--


--===============8433190678803151965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8433190678803151965==--

