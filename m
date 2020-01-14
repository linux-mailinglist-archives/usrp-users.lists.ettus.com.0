Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6122613B178
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 18:58:29 +0100 (CET)
Received: from [::1] (port=39558 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irQSQ-0000W3-Bq; Tue, 14 Jan 2020 12:58:26 -0500
Received: from mail-lj1-f174.google.com ([209.85.208.174]:33931)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1irQSM-0000MT-P0
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 12:58:22 -0500
Received: by mail-lj1-f174.google.com with SMTP id z22so15417276ljg.1
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 09:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dw0TNFkX2wvUbuTiB0g/mLiXtlrA1DWlhioJRugh8jE=;
 b=VXFrU2D9CQ5+1s5ESPWI/R7JFh1uiEE9uv+8bujxuoZEXTbZJNIbAi6sqL0nAIePks
 kN6u9MDypz6YDdy97YXksU1k+z25T6sGbDlR5bjYzV6m4cjwFyCXguLiBEJr8Y8mB127
 4WZnwWBzEDFrT5RsL3aw/A0F9bR/PBlpHgCpoHgmI/OI3dpXLrKqO2W/PvZmQFtrbH+P
 BJk2O1dAkAAC2LjsCLxhLu15tBb7Vy70aQSgta87etHj9F/SMBU3SvDaKueavyoADBLV
 n2uDpIyTvF/769MTKjqiIQJBtC2Zd624cwX92+RNkqLRag7tzwuUXp/8skaNqkT9nRe3
 xm8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dw0TNFkX2wvUbuTiB0g/mLiXtlrA1DWlhioJRugh8jE=;
 b=NBmPfBk+rkFeTJDzK8cyxnNb2RgqCrTpWlFPgfNoz0gFKX/qmAx6VVrXXUleQBScSM
 KnOM35lDYQGizJfMPZcWYy9kUNL188zI/TPOzoTbn1kR/su+XXoaqhvpN3glk10umxI3
 Mv6qguwFUzZEsrSpXR/epahIMTqaK8hDr5szHwHR5EXzyABkyoHoe1rjm5m4QAmi5qRc
 qYQbprFaD4hz06CNkprf9RQjLAvOe4cC73iqGQ7v60tgvc1JkkN8Xx7gk2njP4FCEvhg
 03u/8tKs6t+7TvtisaehtFVNias0wPN1Z2rc8dluYRgDi0E/vdy+i2mksSKC5G0NENVV
 Mucw==
X-Gm-Message-State: APjAAAXX8fqp1ZOPaNDXPZ8qEAeqrIwGaGQHx3ohRnFBzcTrDWII6Ap1
 pa27nuiZ03CZb+msKd83YSsnUqdyC9L1YPWA9PcpiofH
X-Google-Smtp-Source: APXvYqwmxg5BAVvkRVcwDLFkngiMhI77bxfE8iQ2AIHOGTofww/yrQs7+BK+8Xtd/QgaSrGggV7OUEkMUdbqsHtBaHw=
X-Received: by 2002:a2e:8216:: with SMTP id w22mr13724964ljg.222.1579024661479; 
 Tue, 14 Jan 2020 09:57:41 -0800 (PST)
MIME-Version: 1.0
References: <CAL1aUnqNTLwj2-h=7Cx54=Qx1TF7xMm4CQy+pz3+h50qhX2F0A@mail.gmail.com>
 <CAL1aUnqmKEuj5iQVc+8CHZkZapP94g0-GUHMJTdDQGqNB+t1yw@mail.gmail.com>
In-Reply-To: <CAL1aUnqmKEuj5iQVc+8CHZkZapP94g0-GUHMJTdDQGqNB+t1yw@mail.gmail.com>
Date: Tue, 14 Jan 2020 11:57:30 -0600
Message-ID: <CANf970YJ9kJB4A+2hwveU8xzAT23ZF+Z4BeT=fFPqmgn3kPeJQ@mail.gmail.com>
To: Subu Rama <subu.rama@gmail.com>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0335975193201129073=="
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

--===============0335975193201129073==
Content-Type: multipart/alternative; boundary="0000000000000a1392059c1d54e1"

--0000000000000a1392059c1d54e1
Content-Type: text/plain; charset="UTF-8"

 Can you be more explicit about your issues building from source? The
kernel panic you mentioned was on the E320 itself, and the image on the
E320 fs doesn't have anything to do with UHD on your host (unless you
compile it yourself).

I'll let someone else comment on the PPA - it's not something I maintain or
frequently work with.

Sam

On Mon, Jan 6, 2020 at 7:15 AM Subu Rama via USRP-users <
usrp-users@lists.ettus.com> wrote:

> As an additional point, I do see uhd-3.15.0.0-0ubuntu1-eoan1 published on
> 2020-01-01 at
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages
>
> Even when I add a file called ettusresearch.list to /etc/apt/sources.list
> with the following contents: (to circumvent apt-secure)
> deb [allow-insecure=yes]
> http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan main
>
> I get the same error  when running apt update
>
> W: The repository '
> http://ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
> does not have a Release file.
> N: Data from such a repository can't be authenticated and is therefore
> potentially dangerous to use.
> N: See apt-secure(8) manpage for repository creation and user
> configuration details.
> E: The repository '
> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
> does not have a Release file.
> N: Updating from such a repository can't be done securely, and is
> therefore disabled by default.
> N: See apt-secure(8) manpage for repository creation and user
> configuration details.
>
> I am not sure if it's a problem with configuring apt on my end or on the
> launchpad end.
>
> Should I just download the package (.deb) files themselves and not worry
> about adding an apt repo?
>
> Thank you
> Subu
>
>
>
> On Mon, Jan 6, 2020 at 12:52 PM Subu Rama <subu.rama@gmail.com> wrote:
>
>> I am running Ubuntu 19.10 and am having issues with UHD built from git
>> source. v3.15.0.0
>> I have already posted a few messages regarding these issues (kernel panic
>> etc.)
>>
>> So I thought I would get the debian package from NI's Ubuntu repo.
>>
>> When I do:
>> ramasu@srz4:~/QRC3Git/qrc3/Notes/Misc$ sudo apt-add-repository
>> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>> ....
>> I get:
>>
>> Ign:24 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
>> InRelease
>> Err:25 https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan
>> Release
>>   404  Not Found [IP: 91.189.89.222 443]
>> Reading package lists... Done
>> E: The repository '
>> https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd eoan Release'
>> does not have a Release file.
>> N: Updating from such a repository can't be done securely, and is
>> therefore disabled by default.
>>
>> How do I go about resolving this issue?
>>
>> Thank you
>> Subu
>>
>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000a1392059c1d54e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div> Can you be more explicit about your issues building =
from source? The kernel panic you mentioned was on the E320 itself, and the=
 image on the E320 fs doesn&#39;t have anything to do with UHD on your host=
 (unless you compile it yourself). <br></div><div><br></div><div>I&#39;ll l=
et someone else comment on the PPA - it&#39;s not something I maintain or f=
requently work with.</div><div><br></div><div><div><div dir=3D"ltr" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam<br><=
/div></div></div></div></div></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 6, 2020 at 7:15 AM Subu Rama=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>As an additional p=
oint, I do see uhd-3.15.0.0-0ubuntu1-eoan1 published on 2020-01-01 at <a hr=
ef=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+packages" t=
arget=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd/+=
packages</a></div><div><br></div><div>Even when I add a file called ettusre=
search.list to /etc/apt/sources.list with the following contents: (to circu=
mvent apt-secure)</div><div>deb [allow-insecure=3Dyes] <a href=3D"http://pp=
a.launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">http:=
//ppa.launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan main</div><=
div><br></div><div>I get the same error=C2=A0 when running apt update<br></=
div><div><br></div><div>W: The repository &#39;<a href=3D"http://ppa.launch=
pad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">http://ppa.la=
unchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release&#39; does n=
ot have a Release file.<br>N: Data from such a repository can&#39;t be auth=
enticated and is therefore potentially dangerous to use.<br>N: See apt-secu=
re(8) manpage for repository creation and user configuration details.<br>E:=
 The repository &#39;<a href=3D"https://launchpad.net/~ettusresearch/+archi=
ve/ubuntu/uhd" target=3D"_blank">https://launchpad.net/~ettusresearch/+arch=
ive/ubuntu/uhd</a> eoan Release&#39; does not have a Release file.<br>N: Up=
dating from such a repository can&#39;t be done securely, and is therefore =
disabled by default.<br>N: See apt-secure(8) manpage for repository creatio=
n and user configuration details.<br></div><div><br></div><div>I am not sur=
e if it&#39;s a problem with configuring apt on my end or on the launchpad =
end.</div><div><br></div><div>Should I just download the package (.deb) fil=
es themselves and not worry about adding an apt repo?</div><div><br></div><=
div>Thank you<br></div><div>Subu</div><div><br></div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Jan 6, 2020 at 12:52 PM Subu Rama &lt;<a href=3D"mailto:subu.rama@gmail.co=
m" target=3D"_blank">subu.rama@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I am running =
Ubuntu 19.10 and am having issues with UHD built from git source. v3.15.0.0=
</div><div>I have already posted a few messages regarding these issues (ker=
nel panic etc.)<br></div><div><br></div><div>So I thought I would get the d=
ebian package from NI&#39;s Ubuntu repo.</div><div><br></div><div>When I do=
:</div><div>ramasu@srz4:~/QRC3Git/qrc3/Notes/Misc$ sudo apt-add-repository =
<a href=3D"https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=
=3D"_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a></d=
iv><div>....</div><div>I get:</div><div><br></div><div>Ign:24 <a href=3D"ht=
tps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">h=
ttps://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan InRelease =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>Err:25 <a href=3D"https://laun=
chpad.net/~ettusresearch/+archive/ubuntu/uhd" target=3D"_blank">https://lau=
nchpad.net/~ettusresearch/+archive/ubuntu/uhd</a> eoan Release<br>=C2=A0 40=
4 =C2=A0Not Found [IP: 91.189.89.222 443]<br>Reading package lists... Done<=
br>E: The repository &#39;<a href=3D"https://launchpad.net/~ettusresearch/+=
archive/ubuntu/uhd" target=3D"_blank">https://launchpad.net/~ettusresearch/=
+archive/ubuntu/uhd</a> eoan Release&#39; does not have a Release file.<br>=
N: Updating from such a repository can&#39;t be done securely, and is there=
fore disabled by default.</div><div><br></div><div>How do I go about resolv=
ing this issue?</div><div><br></div><div>Thank you</div><div>Subu</div><div=
><br></div><div><br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000a1392059c1d54e1--


--===============0335975193201129073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0335975193201129073==--

