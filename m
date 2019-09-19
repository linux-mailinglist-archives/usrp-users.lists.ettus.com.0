Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0986B8372
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 23:33:16 +0200 (CEST)
Received: from [::1] (port=46990 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iB434-0004Ap-NL; Thu, 19 Sep 2019 17:33:10 -0400
Received: from mail-yb1-f175.google.com ([209.85.219.175]:46923)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dsmay.public@gmail.com>)
 id 1iB431-00044D-94
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 17:33:07 -0400
Received: by mail-yb1-f175.google.com with SMTP id t2so1883317ybo.13
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 14:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ai8UZvfAti0UvNLitxmDSci3BjGMLlsa8ldBCU42MmA=;
 b=NYrf++rMgWporizNVD8VHzjpOaDSEzGwsD+8uMeXh8cLiyF6GPYJx8SOXe5TD9l28H
 ObmutiXbcCaSl2dkJ/p1FYBnr+dVYAhqLgYt8LyHbiV6VuZ68Cvy1zZ3aW9h3wcq56WI
 jPjDAsauEZ3COKhRmK9hBlRX29A765lS24S5niJdklo1XjovOjA/acjyj7pb38n9MKvP
 oU2oKInrGZxndZtLUDadH6zWeWxyVggRO6QTrIkzsYW+MQwQJ3PNqzo28e4Tvq75BysR
 cQZ4iHTtErRKapehvFiKihbFEUNTVQPw8qWYLw1N9VrmlTuIdemjj0PHTyWxDDpIIvlF
 jVrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ai8UZvfAti0UvNLitxmDSci3BjGMLlsa8ldBCU42MmA=;
 b=KfMZSv2SopFwk2KQDXXw83vHjLtaWXsZK9eE/dLO+CqoNDGD/o2dEbb/tvGWf51s8l
 JU40/eICTPVhQ0Bme32cvyE4//eeBby/JnHAL84k0iXJJONd/ehzBQs6FpEW39I7Tfec
 22WJG33pUREuKKTsEr4n8h29oPTiQsAmdiI2ZucEw+NC9IHIk6Hjf0bpaVBv6zzRsxtn
 RwAP10LLTFxjxjiCY0TnjwhJBsQFLsUISlu+LN4rZaZn4EDBrtNzScwM6XDx4uT7d0VK
 LVL/GrnrMVN4s8Bq/uVW5xgEJviAi2WZNrh+7S7s9oD8yUiquCboUx+/bVxY6E6HqvZh
 1bog==
X-Gm-Message-State: APjAAAW41tNpeC/NOdWoQxsPnF95Mg14RVGtlV4Gb1PHJ1mla08WM/F9
 oUNA3JmVVjQAnxyOOAbRMYhZ61cE90mx6JzZ6XE=
X-Google-Smtp-Source: APXvYqzgFdAuqqivQXIg4TWHWTWx5LDC7TA+GGlbUcwX+CNHb/BVL3kJUaTb382e1awWyBype9ig2E7Xh3fVmQ1PAKY=
X-Received: by 2002:a25:b6c9:: with SMTP id f9mr8767308ybm.404.1568928746629; 
 Thu, 19 Sep 2019 14:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAL8PJZ8B_CSoEPxKJJ8Rv7RLxXFgehfhtWCFN8ELJAV+RJQNMA@mail.gmail.com>
 <CAKJyDkL_c9yPZUV0SNS9C+_x=+5-N+oOF8=pngXtPQEG+rbBaA@mail.gmail.com>
In-Reply-To: <CAKJyDkL_c9yPZUV0SNS9C+_x=+5-N+oOF8=pngXtPQEG+rbBaA@mail.gmail.com>
Date: Thu, 19 Sep 2019 17:32:15 -0400
Message-ID: <CAL8PJZ8Lt3WHF-sa4tBWCFYx+7gtxXJM_97q_Q9mH0DZw3At7g@mail.gmail.com>
To: Robin Coxe <coxe@quanttux.com>, marcus.mueller@ettus.com
Subject: Re: [USRP-users] uhd example programs - weird environment variable
 issue?
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
From: David Smay via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Smay <dsmay.public@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1572438102895087394=="
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

--===============1572438102895087394==
Content-Type: multipart/alternative; boundary="0000000000009eeccf0592eeb00d"

--0000000000009eeccf0592eeb00d
Content-Type: text/plain; charset="UTF-8"

Marcus & Robin,

Thank you so much!  What you both said made perfect sense and it helped me
get the example programs running again... but I'm still a little mystified
as to how this happened in the first place.

I rebuilt this machine from scratch last night, and I must have
inadvertently checked out an old git version during one of my numerous
troubleshooting iterations of uninstalling and reinstalling uhd.  It also
appears that the old uhd version stored the example programs in:

/usr/lib/uhd/examples

instead of the current location set by 3.14 which is:

/usr/local/lib/uhd/examples

It also appears that when I ran `sudo make uninstall` from the build
directory of that inadvertent uhd 3.10 installation, it must not have
removed the example programs.  Unless there is a chance that uhd 3.10 got
installed automatically as a byproduct of my installation of another SDR
related app such as URH or gnuradio, it seems like the inadvertent git
checkout is the most likely explanation.

Anyways, things are running now and I greatly appreciate the help and quick
responses!

Thanks!

Dave

On Thu, Sep 19, 2019 at 5:12 PM Robin Coxe <coxe@quanttux.com> wrote:

> Your output indicates that you're executing UHD v.3.10.0.3, not version
> 3.14.1, so you must have multiple versions installed.
>
> Go to /usr/local/lib (or wherever you installed UHD on your machine) and
> make sure it looks something like this when you type in "ls -l uhd*":
> lrwxrwxrwx 1 root root       16 Sep 16 11:03 libuhd.so -> libuhd.so.3.14.1
> -rw-r--r-- 1 root root 15583328 Sep 16 11:01 libuhd.so.3.14.1
>
> On Thu, Sep 19, 2019 at 3:55 PM David Smay via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I recently did a clean installation of UHD 3.14.1 and gnuradio 3.7.13.5
>> on Ubuntu 18.04 LTS, following the steps outlined in the Ettus knowledge
>> base for installation from source.
>>
>> The installation worked great, and I started experimenting with the
>> example programs installed with UHD (located in /usr/lib/uhd/examples/).
>> At first they ran correctly and I was able to run the gpio and
>> benchmark_rate programs without issue, getting the normal expected output
>> for my b205mini-i.
>>
>> Without making any changes to the system, and in the same shell session,
>> all of a sudden the example programs all started consistently generating
>> errors when I tried to run them:
>>
>> dsmay4@UbuntuPrecision7530:/usr/lib/uhd/examples$ ./benchmark_rate
>> --rx_rate 10e6
>> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
>>
>>
>>
>> UHD Warning:
>>     EnvironmentError: IOError: Could not find path for image:
>> usrp_b200_fw.hex
>>     Using images directory: <no images directory located>
>>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
>> the below instructions to download the images package.
>>     Please run:
>>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>> Creating the usrp device with: ...
>>
>> UHD Warning:
>>     EnvironmentError: IOError: Could not find path for image:
>> usrp_b200_fw.hex
>>     Using images directory: <no images directory located>
>>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
>> the below instructions to download the images package.
>>     Please run:
>>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>> Error: LookupError: KeyError: No devices found for ----->
>> Empty Device Address
>>
>> This is quite strange as my uhd_images_downloader isn't installed to that
>> directory, but it does run just fine.  uhd_find_devices and uhd_usrp_probe
>> run fine and indicate no problems with the radio itself.  Other sdr apps
>> using the b205 work just fine - the problem seems to only impact these
>> example programs.
>>
>> I tried rebooting, as well as uninstalling and reinstalling UHD (which
>> reinstalled the example programs) but the problem persists.  I'm mostly
>> interested in figuring out what caused the spontaneous change in system
>> behavior.  I can't for the life of me figure out why just these apps can't
>> find the fpga images but everything else works just fine...
>>
>> TIA,
>>
>> Dave
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000009eeccf0592eeb00d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus &amp; Robin,</div><div><br></div><div>Thank yo=
u so much!=C2=A0 What you both said made perfect sense and it helped me get=
 the example programs running again... but I&#39;m still a little mystified=
 as to how this happened in the first place.<br></div><div><br></div><div>I=
 rebuilt this machine from scratch last night, and I must have inadvertentl=
y checked out an old git version during one of my numerous troubleshooting =
iterations of uninstalling and reinstalling uhd.=C2=A0 It also appears that=
 the old uhd version stored the example programs in:</div><div><br></div><d=
iv>/usr/lib/uhd/examples</div><div><br></div><div>instead of the current lo=
cation set by 3.14 which is:</div><div><br></div><div>/usr/local/lib/uhd/ex=
amples</div><div><br></div><div>It also appears that when I ran `sudo make =
uninstall` from the build directory of that inadvertent uhd 3.10 installati=
on, it must not have removed the example programs.=C2=A0 Unless there is a =
chance that uhd 3.10 got installed automatically as a byproduct of my insta=
llation of another SDR related app such as URH or gnuradio, it seems like t=
he inadvertent git checkout is the most likely explanation.</div><div><br><=
/div><div>Anyways, things are running now and I greatly appreciate the help=
 and quick responses!</div><div><br></div><div>Thanks!</div><div><br></div>=
<div>Dave<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Sep 19, 2019 at 5:12 PM Robin Coxe &lt;<a href=
=3D"mailto:coxe@quanttux.com">coxe@quanttux.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Your output=
 indicates that you&#39;re executing UHD v.3.10.0.3, not version 3.14.1, so=
 you must have multiple versions installed.<div><br></div><div>Go to /usr/l=
ocal/lib (or wherever you installed UHD on your machine) and make sure it l=
ooks something like this when you type in &quot;ls -l uhd*&quot;:</div><div=
>lrwxrwxrwx 1 root root =C2=A0 =C2=A0 =C2=A0 16 Sep 16 11:03 libuhd.so -&gt=
; libuhd.so.3.14.1<br>-rw-r--r-- 1 root root 15583328 Sep 16 11:01 libuhd.s=
o.3.14.1<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Sep 19, 2019 at 3:55 PM David Smay via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I=
 recently did a clean installation of UHD 3.14.1 and gnuradio 3.7.13.5 on U=
buntu 18.04 LTS, following the steps outlined in the Ettus knowledge base f=
or installation from source.</div><div><br></div><div>The installation work=
ed great, and I started experimenting with the example programs installed w=
ith UHD (located in /usr/lib/uhd/examples/).=C2=A0 At first they ran correc=
tly and I was able to run the gpio and benchmark_rate programs without issu=
e, getting the normal expected output for my b205mini-i.</div><div><br></di=
v><div>Without making any changes to the system, and in the same shell sess=
ion, all of a sudden the example programs all started consistently generati=
ng errors when I tried to run them:</div><div><br></div><div>dsmay4@UbuntuP=
recision7530:/usr/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6<br>linu=
x; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown<br><b=
r><br><br>UHD Warning:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: Could no=
t find path for image: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using images direc=
tory: &lt;no images directory located&gt;<br>=C2=A0 =C2=A0 Set the environm=
ent variable &#39;UHD_IMAGES_DIR&#39; appropriately or follow the below ins=
tructions to download the images package.<br>=C2=A0 =C2=A0 Please run:<br>=
=C2=A0 =C2=A0 =C2=A0&quot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_do=
wnloader.py&quot;<br>Creating the usrp device with: ...<br><br>UHD Warning:=
<br>=C2=A0 =C2=A0 EnvironmentError: IOError: Could not find path for image:=
 usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using images directory: &lt;no images di=
rectory located&gt;<br>=C2=A0 =C2=A0 Set the environment variable &#39;UHD_=
IMAGES_DIR&#39; appropriately or follow the below instructions to download =
the images package.<br>=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=A0&qu=
ot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<br>Er=
ror: LookupError: KeyError: No devices found for -----&gt;<br>Empty Device =
Address<br></div><div><br></div><div>This is quite strange as my uhd_images=
_downloader isn&#39;t installed to that directory, but it does run just fin=
e.=C2=A0 uhd_find_devices and uhd_usrp_probe run fine and indicate no probl=
ems with the radio itself.=C2=A0 Other sdr apps using the b205 work just fi=
ne - the problem seems to only impact these example programs.</div><div><br=
></div><div>I tried rebooting, as well as uninstalling and reinstalling UHD=
 (which reinstalled the example programs) but the problem persists.=C2=A0 I=
&#39;m mostly interested in figuring out what caused the spontaneous change=
 in system behavior.=C2=A0 I can&#39;t for the life of me figure out why ju=
st these apps can&#39;t find the fpga images but everything else works just=
 fine...</div><div><br></div><div>TIA,</div><div><br></div><div>Dave<br></d=
iv></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000009eeccf0592eeb00d--


--===============1572438102895087394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1572438102895087394==--

