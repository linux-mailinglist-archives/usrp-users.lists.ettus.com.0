Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF6513B273
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 19:57:33 +0100 (CET)
Received: from [::1] (port=33876 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irRNb-0006Aa-G9; Tue, 14 Jan 2020 13:57:31 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:42218)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <subu.rama@gmail.com>) id 1irRNX-00065c-F3
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 13:57:27 -0500
Received: by mail-qk1-f176.google.com with SMTP id z14so13149928qkg.9
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 10:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=77KJdAFvbprBJSrJGfS9IUU607wGyy6zibDyl3W0fos=;
 b=Vui00bpSe0u72EbNYzktqWbilf8r4bHi6EF3sg0Cc/u/Y4QQnX1wIEXyMkRo6sZ4BG
 4r33JxvfRtEfcz64eBNXCxr4ZZKw6n0P2SsbUIpYUPMxRIbTK+nY8K1yz/hz9GbFXtvB
 FnQHneHe9OoFeVXpV/npppxcIHH6sEdf3sNXYe6fONXalgeLf++qs8JGrCDKmj+o0D+V
 pcyEW6YzfI7wpFCRjQ/T1IVfwanB0cbkcuCDsJR5QZICya1Tv4z+r2dbBYHXGCwSo3K+
 14hZYeGWplDjrL7ig67kWkwYwBXWJyngDOElU6SkaaxSz9rzq7lZszPX3qmSpeXivL0v
 3vTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=77KJdAFvbprBJSrJGfS9IUU607wGyy6zibDyl3W0fos=;
 b=ISn/lOrJCZ7NNjKC4daoJjjd4uigQs/fHN7Wx9NMxBEJlJFMj21hEaFrD2hFtZZofJ
 eSkpQ324DdSelu8qZ+STetwDUFlNSSschZja2URK2Mlug3s9wpbAd2bqcRJ+II0Yg6Kk
 S/xx4nRdIf3sXr/tQFQFTT9cvnDqbjdQhGoEYhua/TILioSLqlT/TzjdDSFkkiaRvj4v
 PxZldeziUGD+uUXHq1WTWX4IlyyZ/6ef2tvHdi4sxsmM6NCtm+AfwJ0i1aZ21jRaOxDZ
 8s/LPOcCR1WXFzNbnJ2AHFVLHhZAV1lWWlSZIKkV6vfut7kDTBIh91QTrL5Kb0LmAs5a
 RGiA==
X-Gm-Message-State: APjAAAUPedJnGgjgnxuhTffiFpDaZ2x/J6748KBgYg832QYRu4aiw9wN
 KiYZZLfwrhsem3gyxpk8H2ShBtYpY6fRWHUxEtE=
X-Google-Smtp-Source: APXvYqx2D7fjy/xXGKIUL+GWiaVAYWhZFWsVeemzBtXw1X/c42+88yVv5DkaxpWIUeCB8GAiWU4SFzTgzMbGjPLrHMo=
X-Received: by 2002:a05:620a:15b1:: with SMTP id
 f17mr23803733qkk.45.1579028206595; 
 Tue, 14 Jan 2020 10:56:46 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnqNTLwj2-h=7Cx54=Qx1TF7xMm4CQy+pz3+h50qhX2F0A@mail.gmail.com>
 <CAL1aUnqmKEuj5iQVc+8CHZkZapP94g0-GUHMJTdDQGqNB+t1yw@mail.gmail.com>
 <CANf970YJ9kJB4A+2hwveU8xzAT23ZF+Z4BeT=fFPqmgn3kPeJQ@mail.gmail.com>
In-Reply-To: <CANf970YJ9kJB4A+2hwveU8xzAT23ZF+Z4BeT=fFPqmgn3kPeJQ@mail.gmail.com>
Date: Tue, 14 Jan 2020 13:56:08 -0500
Message-ID: <CAL1aUnrzEaw7+t4QGrJTB1ZpfO7qqV0ZcnKZ8c-Q1SrvDz9KBQ@mail.gmail.com>
To: Sam Reiter <sam.reiter@ettus.com>
Subject: Re: [USRP-users] USRP PPA for Ubuntu 19.10
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Subu Rama via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Subu Rama <subu.rama@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5371127112508615706=="
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

--===============5371127112508615706==
Content-Type: multipart/alternative; boundary="00000000000058318d059c1e27c4"

--00000000000058318d059c1e27c4
Content-Type: text/plain; charset="UTF-8"

Thank you, Sam.

These are two different problems, that I reported together in one message.
I was compiling the UHD myself and but now am installing it from the
3.15.0.0 .deb packages released by Ettus.

Anyway, I got over the PPA add issue.

Also I haven't seen the kernel panic again after repeating the mender
process.

So, things are normal as of now.

Subu


On Tue, Jan 14, 2020 at 12:57 PM Sam Reiter <sam.reiter@ettus.com> wrote:

> Can you be more explicit about your issues building from source? The
> kernel panic you mentioned was on the E320 itself, and the image on the
> E320 fs doesn't have anything to do with UHD on your host (unless you
> compile it yourself).
>
> I'll let someone else comment on the PPA - it's not something I maintain
> or frequently work with.
>
> Sam
>
> On Mon, Jan 6, 2020 at 7:15 AM Subu Rama via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> As an additional point, I do see uhd-3.15.0.0-0ubuntu1-eoan1 published on
>> 2020-01-01 at
>> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages
>>
>> Even when I add a file called ettusresearch.list to /etc/apt/sources.list
>> with the following contents: (to circumvent apt-secure)
>> deb [allow-insecure=yes]
>> http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan main
>>
>> I get the same error  when running apt update
>>
>> W: The repository '
>> http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
>> Release' does not have a Release file.
>> N: Data from such a repository can't be authenticated and is therefore
>> potentially dangerous to use.
>> N: See apt-secure(8) manpage for repository creation and user
>> configuration details.
>> E: The repository '
>> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
>> does not have a Release file.
>> N: Updating from such a repository can't be done securely, and is
>> therefore disabled by default.
>> N: See apt-secure(8) manpage for repository creation and user
>> configuration details.
>>
>> I am not sure if it's a problem with configuring apt on my end or on the
>> launchpad end.
>>
>> Should I just download the package (.deb) files themselves and not worry
>> about adding an apt repo?
>>
>> Thank you
>> Subu
>>
>>
>>
>> On Mon, Jan 6, 2020 at 12:52 PM Subu Rama <subu.rama@gmail.com> wrote:
>>
>>> I am running Ubuntu 19.10 and am having issues with UHD built from git
>>> source. v3.15.0.0
>>> I have already posted a few messages regarding these issues (kernel
>>> panic etc.)
>>>
>>> So I thought I would get the debian package from NI's Ubuntu repo.
>>>
>>> When I do:
>>> ramasu@srz4:~/QRC3Git/qrc3/Notes/Misc$ sudo apt-add-repository
>>> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>>> ....
>>> I get:
>>>
>>> Ign:24 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
>>> InRelease
>>> Err:25 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
>>> Release
>>>   404  Not Found [IP: 91.189.89.222 443]
>>> Reading package lists... Done
>>> E: The repository '
>>> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
>>> does not have a Release file.
>>> N: Updating from such a repository can't be done securely, and is
>>> therefore disabled by default.
>>>
>>> How do I go about resolving this issue?
>>>
>>> Thank you
>>> Subu
>>>
>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000058318d059c1e27c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you, Sam.</div><div><br></div><div>These are tw=
o different problems, that I reported together in one message. <br></div><d=
iv>I was compiling the UHD myself and but now am installing it from the 3.1=
5.0.0 .deb packages released by Ettus.<br></div><div><br></div><div>Anyway,=
 I got over the PPA add issue. <br></div><div><br></div><div>Also I haven&#=
39;t seen the kernel panic again after repeating the mender process.<br></d=
iv><div><br></div><div>So, things are normal as of now.</div><div><br></div=
><div>Subu</div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2020 at 12:57 PM Sam Reiter =
&lt;<a href=3D"mailto:sam.reiter@ettus.com">sam.reiter@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div> Can you be more explicit about your issues building from source=
? The kernel panic you mentioned was on the E320 itself, and the image on t=
he E320 fs doesn&#39;t have anything to do with UHD on your host (unless yo=
u compile it yourself). <br></div><div><br></div><div>I&#39;ll let someone =
else comment on the PPA - it&#39;s not something I maintain or frequently w=
ork with.</div><div><br></div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><=
div><div dir=3D"ltr">Sam<br></div></div></div></div></div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan=
 6, 2020 at 7:15 AM Subu Rama via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>As an additional point, I do see uhd-3.15.0.0-0ubuntu1-eoan1 pub=
lished on 2020-01-01 at <a href=3D"https://launchpad.net/~ettusresearch/+ar=
chive/ubuntu/uhd/+packages" target=3D"_blank">https://launchpad.net/~ettusr=
esearch/+archive/ubuntu/uhd/+packages</a></div><div><br></div><div>Even whe=
n I add a file called ettusresearch.list to /etc/apt/sources.list with the =
following contents: (to circumvent apt-secure)</div><div>deb [allow-insecur=
e=3Dyes] <a href=3D"http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu=
/uhd" target=3D"_blank">http://ppa.launchpad.net/~ettusresearch/+archive/ub=
untu/uhd</a> eoan main</div><div><br></div><div>I get the same error=C2=A0 =
when running apt update<br></div><div><br></div><div>W: The repository &#39=
;<a href=3D"http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd" ta=
rget=3D"_blank">http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd=
</a> eoan Release&#39; does not have a Release file.<br>N: Data from such a=
 repository can&#39;t be authenticated and is therefore potentially dangero=
us to use.<br>N: See apt-secure(8) manpage for repository creation and user=
 configuration details.<br>E: The repository &#39;<a href=3D"https://launch=
pad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">https://launc=
hpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release&#39; does not =
have a Release file.<br>N: Updating from such a repository can&#39;t be don=
e securely, and is therefore disabled by default.<br>N: See apt-secure(8) m=
anpage for repository creation and user configuration details.<br></div><di=
v><br></div><div>I am not sure if it&#39;s a problem with configuring apt o=
n my end or on the launchpad end.</div><div><br></div><div>Should I just do=
wnload the package (.deb) files themselves and not worry about adding an ap=
t repo?</div><div><br></div><div>Thank you<br></div><div>Subu</div><div><br=
></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Jan 6, 2020 at 12:52 PM Subu Rama &lt;<a href=
=3D"mailto:subu.rama@gmail.com" target=3D"_blank">subu.rama@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>I am running Ubuntu 19.10 and am having issues with UHD bui=
lt from git source. v3.15.0.0</div><div>I have already posted a few message=
s regarding these issues (kernel panic etc.)<br></div><div><br></div><div>S=
o I thought I would get the debian package from NI&#39;s Ubuntu repo.</div>=
<div><br></div><div>When I do:</div><div>ramasu@srz4:~/QRC3Git/qrc3/Notes/M=
isc$ sudo apt-add-repository <a href=3D"https://launchpad.net/~ettusresearc=
h/+archive/ubuntu/uhd" target=3D"_blank">https://launchpad.net/~ettusresear=
ch/+archive/ubuntu/uhd</a></div><div>....</div><div>I get:</div><div><br></=
div><div>Ign:24 <a href=3D"https://launchpad.net/~ettusresearch/+archive/ub=
untu/uhd" target=3D"_blank">https://launchpad.net/~ettusresearch/+archive/u=
buntu/uhd</a> eoan InRelease =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>E=
rr:25 <a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" =
target=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd<=
/a> eoan Release<br>=C2=A0 404 =C2=A0Not Found [IP: 91.189.89.222 443]<br>R=
eading package lists... Done<br>E: The repository &#39;<a href=3D"https://l=
aunchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">https://=
launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release&#39; does=
 not have a Release file.<br>N: Updating from such a repository can&#39;t b=
e done securely, and is therefore disabled by default.</div><div><br></div>=
<div>How do I go about resolving this issue?</div><div><br></div><div>Thank=
 you</div><div>Subu</div><div><br></div><div><br></div></div>
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

--00000000000058318d059c1e27c4--


--===============5371127112508615706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5371127112508615706==--

