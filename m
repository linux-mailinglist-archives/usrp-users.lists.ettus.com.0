Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 274C02E7C77
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 21:55:20 +0100 (CET)
Received: from [::1] (port=38960 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kuiV3-0004t2-0H; Wed, 30 Dec 2020 15:55:17 -0500
Received: from mail-oo1-f49.google.com ([209.85.161.49]:47063)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1kuiUz-0004nr-E8
 for usrp-users@lists.ettus.com; Wed, 30 Dec 2020 15:55:13 -0500
Received: by mail-oo1-f49.google.com with SMTP id n127so3941052ooa.13
 for <usrp-users@lists.ettus.com>; Wed, 30 Dec 2020 12:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ATIT5nzmEMaafoPMvyp0fGU54O+tAkxBvn10+3mR/sg=;
 b=fS6Ox5llVPCM9NhRiYKHx6H3jrdkwQXhCOaaRWVezzYYRp6Eq7O5iAc2DsSruIdAZ/
 vC1n0Q3nynMlq33m4kOhvQXRNBz/kBoHpEDv4uqYr+1kXbwuTuaiIwGjQvoho/EcQoav
 yPnODdm1gYFjkelK5ivgRYcTI7KlkxLqy8PEAVOKUsBB2XRRZWeNF+Z5BvCHh2+oI7eq
 j3Li5DfAbVSwDoIJuo02ptt5+hDY35cZhM7UjIQwwbst5O7cPp71z0xT4/Y0qdLxkZ3q
 9iz05REVgJOHu65ZHbHuwHa8rW5Gr0WHdDgFLK9wiKQVo+nzI4tCM2dn7I14Wj1noNee
 QrTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ATIT5nzmEMaafoPMvyp0fGU54O+tAkxBvn10+3mR/sg=;
 b=mlIetZsveN2T6eU2kMHtnHCXlgJ3MNYw2T28urX1rEaTwRHRIExL5iUhCT01yPzgTt
 cmgxwA1f1ieE5CL2iJrVJouOiKkoUllH62P5M6TVlmTMvQ5sL5xcGk9nEh7H29GgztWO
 gSek290U04qS5qaBoHXJhzVBC2L9eepSCA5LXG7zVsH/WtYPdVZTw3D06lJNExeq/GHW
 RUazQ/z31suudOWV5bbCY9RakrYFyk2bJG/JC6JFDjjUTHNG6GsMNSGnWV0/ejxmkI9F
 Cgfs8qo97YiOzeDOU/uXyXt2ZtRrKyme7L1t/Hkp1xNzBeeGSmlPHxsdZjnwXfZeLLUc
 PNaw==
X-Gm-Message-State: AOAM5326Mnph2+pI5Vq5JZXqyKbaj7pz+hq2k13MdOXkWIJzWSvdDHV4
 PT7IQo4FcxgRiZye2dLtInzZh1obaNHw4wx9xBY=
X-Google-Smtp-Source: ABdhPJyg1WMZZz575W4ytCt+V1IKNJ+4ZrYc0YqngmUd9sGvOgBV49Ao8FPk6kZtcUtK8AMQQm4ba94mNEOC/HEWiW8=
X-Received: by 2002:a05:6820:381:: with SMTP id
 r1mr37611849ooj.73.1609361672483; 
 Wed, 30 Dec 2020 12:54:32 -0800 (PST)
MIME-Version: 1.0
References: <CAO38sJ6jjGaAvuRteOLWzH3baLvxTnAOfvD6iXr=o8qNqjjZnQ@mail.gmail.com>
 <5FEB6721.9050100@gmail.com>
In-Reply-To: <5FEB6721.9050100@gmail.com>
Date: Wed, 30 Dec 2020 21:54:21 +0100
Message-ID: <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210 UHD library installation issue
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
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============1433311547667623057=="
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

--===============1433311547667623057==
Content-Type: multipart/alternative; boundary="000000000000cdb73705b7b4b671"

--000000000000cdb73705b7b4b671
Content-Type: text/plain; charset="UTF-8"

Any update over it !!

On Tue, Dec 29, 2020 at 6:28 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 12/29/2020 12:18 PM, Ashutosh Singh via USRP-users wrote:
>
> Hi ,
> I am trying to install the UHD libraries using binaries provided by Ettus
> research following below page:
> USRP Hardware Driver and USRP Manual: Binary Installation (ettus.com)
> <https://files.ettus.com/manual/page_install.html#install_linux>
>
>
> My System :
>
> NAME="Ubuntu"
> VERSION="18.04.5 LTS (Bionic Beaver)"
>
>
>
> *Error:*
>
> *root@yy217925:/home/lab_5g/openairinterface5g/openairinterface5g/cmake_targets/lte_build_oai/build#
> sudo add-apt-repository ppa:ettusresearch/uhd*
>
> * More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
> <https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd>*
> *Press [ENTER] to continue or Ctrl-c to cancel adding it.*
>
> *Hit:1 http://nl.archive.ubuntu.com/ubuntu
> <http://nl.archive.ubuntu.com/ubuntu> bionic InRelease*
> *Hit:2 http://nl.archive.ubuntu.com/ubuntu
> <http://nl.archive.ubuntu.com/ubuntu> bionic-updates InRelease*
> *Hit:3 http://nl.archive.ubuntu.com/ubuntu
> <http://nl.archive.ubuntu.com/ubuntu> bionic-backports InRelease*
> *Hit:4 http://nl.archive.ubuntu.com/ubuntu
> <http://nl.archive.ubuntu.com/ubuntu> bionic-security InRelease*
> *Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu
> <http://ppa.launchpad.net/ettusresearch/uhd/ubuntu> bionic InRelease*
> *Hit:7 http://repo.zabbix.com/zabbix/5.0/ubuntu
> <http://repo.zabbix.com/zabbix/5.0/ubuntu> bionic InRelease*
> *Ign:6 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
> <https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic> bionic
> InRelease*
> *Err:8 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
> <https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic> bionic
> Release*
> *  404  Not Found [IP: 23.253.215.39 443]*
> *Reading package lists... Done*
> *E: The repository
> 'http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic
> <http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic> bionic
> Release' does not have a Release file.*
> *N: Updating from such a repository can't be done securely, and is
> therefore disabled by default.*
> *N: See apt-secure(8) manpage for repository creation and user
> configuration details.*
>
>
>
> Please help me solve it !!
>
>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> This looks like broken PPA infrastructure.  I have a query in to Ettus
> engineering to see what's going on .
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cdb73705b7b4b671
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Any update over it !!</div><div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 29, 2020 at 6:28 PM=
 Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"></div><div bgcolor=3D"#FFFFFF" =
text=3D"#000000">
    <div>On 12/29/2020 12:18 PM, Ashutosh Singh
      via USRP-users wrote:<br>
    </div>
    </div><div bgcolor=3D"#FFFFFF" text=3D"#000000"><blockquote type=3D"cit=
e"></blockquote></div><div bgcolor=3D"#FFFFFF" text=3D"#000000"><blockquote=
 type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr"><font color=3D"#0000ff">Hi ,</font>
                <div><font color=3D"#0000ff">I am trying to install the
                    UHD libraries=C2=A0using binaries provided by Ettus
                    research following=C2=A0below page:</font></div>
                <div><a href=3D"https://files.ettus.com/manual/page_install=
.html#install_linux" target=3D"_blank">USRP
                    Hardware Driver and USRP Manual: Binary Installation
                    (ettus.com)</a><font color=3D"#0000ff"><br>
                  </font></div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
                <div><font color=3D"#0000ff">My System :</font></div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
                <div>
                  <div><font color=3D"#0000ff">NAME=3D&quot;Ubuntu&quot;</f=
ont></div>
                  <div><font color=3D"#0000ff">VERSION=3D&quot;18.04.5 LTS
                      (Bionic Beaver)&quot;</font></div>
                </div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
                <div><font color=3D"#ff0000"><b>Error:</b></font></div>
                <div><font color=3D"#0000ff"><br>
                  </font></div>
              </div>
            </div>
          </div>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>root@yy217925:/home/lab=
_5g/openairinterface5g/openairinterface5g/cmake_targets/lte_build_oai/build=
#<b><font size=3D"4"> sudo add-apt-repository
                              ppa:ettusresearch/uhd</font></b></i></font></=
div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i><br>
                        </i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>=C2=A0More info: <a hre=
f=3D"https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd" target=3D"=
_blank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a></i></f=
ont></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Press [ENTER] to
                          continue or Ctrl-c to cancel adding it.</i></font=
></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i><br>
                        </i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:1 <a href=3D"http:/=
/nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.c=
om/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:2 <a href=3D"http:/=
/nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.c=
om/ubuntu</a>
                          bionic-updates InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:3 <a href=3D"http:/=
/nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.c=
om/ubuntu</a>
                          bionic-backports InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:4 <a href=3D"http:/=
/nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.c=
om/ubuntu</a>
                          bionic-security InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:5 <a href=3D"http:/=
/ppa.launchpad.net/ettusresearch/uhd/ubuntu" target=3D"_blank">http://ppa.l=
aunchpad.net/ettusresearch/uhd/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:7 <a href=3D"http:/=
/repo.zabbix.com/zabbix/5.0/ubuntu" target=3D"_blank">http://repo.zabbix.co=
m/zabbix/5.0/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Ign:6 <a href=3D"https:=
//files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic" target=3D"_blank">ht=
tps://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i style=3D"background-col=
or:rgb(255,255,0)">Err:8
                          <a href=3D"https://files.ettus.com/binaries/uhd/r=
epo/uhd/ubuntu/bionic" target=3D"_blank">https://files.ettus.com/binaries/u=
hd/repo/uhd/ubuntu/bionic</a>
                          bionic Release</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i style=3D"background-col=
or:rgb(255,255,0)">=C2=A0 404=C2=A0
                          Not Found [IP: 23.253.215.39 443]</i></font></div=
>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Reading package
                          lists... Done</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>E: The repository &#39;=
<a href=3D"http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic" targ=
et=3D"_blank">http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a=
>
                          bionic Release&#39; does not have a Release file.=
</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>N: Updating from such
                          a repository can&#39;t be done securely, and is
                          therefore disabled by default.</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>N: See apt-secure(8)
                          manpage for repository creation and user
                          configuration details.</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
            <div><br>
            </div>
          </blockquote>
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:=
0px">
            <div>Please help me solve it !!</div>
          </blockquote>
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      </blockquote></div><div bgcolor=3D"#FFFFFF" text=3D"#000000"><blockqu=
ote type=3D"cite"><pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
    This looks like broken PPA infrastructure.=C2=A0 I have a query in to
    Ettus engineering to see what&#39;s going on .<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000cdb73705b7b4b671--


--===============1433311547667623057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1433311547667623057==--

