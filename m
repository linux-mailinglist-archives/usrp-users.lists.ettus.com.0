Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B963F2E7C89
	for <lists+usrp-users@lfdr.de>; Wed, 30 Dec 2020 22:06:46 +0100 (CET)
Received: from [::1] (port=39052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kuig8-0005kc-U1; Wed, 30 Dec 2020 16:06:44 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:36092)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kuig4-0005dU-LK
 for USRP-users@lists.ettus.com; Wed, 30 Dec 2020 16:06:40 -0500
Received: by mail-qk1-f182.google.com with SMTP id 186so14989358qkj.3
 for <USRP-users@lists.ettus.com>; Wed, 30 Dec 2020 13:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=KpjJcs98mQnhwXHtNJu5zwRlyzC8Qc+K8FLbF18hDA0=;
 b=mdQsYg4cM2FhaHb8P6eV+faOQo05MwuWIHZy8v5dumTl9Gh7aRngaM8dAFFETMHWhd
 KSG0jtBqQqGVlAqQyUnfB9CD5Z7VUd6ksLYKImBN3W1/Er1Rk4I175y34NDVBGxfR356
 p/qdSxu+binDbRyH4WFR4U4Jr+Vr7FCiQJtFDdhdQ2nc8n5ZnXPtt2nnlYMVlMW1UCpR
 NoSNfIojkAGQy+XaCSbRR8ZDTO+IWVWOMbFZdL8hN7/YbKoEF3EeQL34KzI8llINHQjF
 OpvOy+uIPG0GVOlD02pnq1FLMcCR9ZiOqfr30ibmXN5bwjO2bs0wl7zsu5oQnuzy6gzj
 re+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=KpjJcs98mQnhwXHtNJu5zwRlyzC8Qc+K8FLbF18hDA0=;
 b=XS78OW8XLmjL8C5SDm9iGGw0sH8OZSUKoZJJxbtOtriLncIjLxqhsJvDp2DnmFMajU
 jHhDfR1kM8ieKCXylfOzIi7/t8RfOx1PhUM10I9PJwxVLWmttNKV0Rr/cJ5w9FcLllzE
 wj8RYYH8jDWyy3ej7AuEyNvCD5acrB4/EnG0xh7hV4jJziT38wUz1kcPI+tizGC/Ox9f
 C/4Egxd7IlexcNCPqrSu6XTHWXcOUVbrTrEQbzyQpzJ2dpc44LQFgLarNtJidRVcOmwA
 uqSQuTYsZJajgrUIK+0m0u7yRicPDAeMPV9wUIt0B9wBTJJkPxBDrFBs8Xuc00M82GKT
 vLGA==
X-Gm-Message-State: AOAM531+HWRFbt2bpl7gH4xA3cu5/EUvcBZloq9fzWSw7MY48GNBRkcR
 YJ3v+Pgx2m+JPCwkz6sQSlA=
X-Google-Smtp-Source: ABdhPJxfDvcRxh43n9Hltne11dH3RZUQzPRy3TEM5tJk/MUi0N5NCi73R2HiVXBkH7MbFewjpWEVEg==
X-Received: by 2002:a37:a155:: with SMTP id k82mr53992880qke.290.1609362360006; 
 Wed, 30 Dec 2020 13:06:00 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id a9sm28641823qkk.39.2020.12.30.13.05.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Dec 2020 13:05:59 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 30 Dec 2020 16:05:58 -0500
Message-Id: <CB84DFCF-D417-4D28-9711-29E8B47BDC45@gmail.com>
References: <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CAO38sJ7siw0ZLqUqOa0ghaLK9vMvFM=-qj0RcqYUWR_4k5U8Cw@mail.gmail.com>
To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
X-Mailer: iPhone Mail (18B92)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============8798433642572456329=="
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


--===============8798433642572456329==
Content-Type: multipart/alternative; boundary=Apple-Mail-E6B3EDF6-1848-4024-AD69-00E036FDF6D7
Content-Transfer-Encoding: 7bit


--Apple-Mail-E6B3EDF6-1848-4024-AD69-00E036FDF6D7
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ettus R&D are aware of the issue. But it being Christmas break there likely w=
on=E2=80=99t be any action for a couple of days.=20



Sent from my iPhone

> On Dec 30, 2020, at 3:54 PM, Ashutosh Singh <ashutoshsingh7589@gmail.com> w=
rote:
>=20
> =EF=BB=BF
> Any update over it !!
>=20
>> On Tue, Dec 29, 2020 at 6:28 PM Marcus D. Leech via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>>> On 12/29/2020 12:18 PM, Ashutosh Singh via USRP-users wrote:
>>=20
>>> Hi ,
>>> I am trying to install the UHD libraries using binaries provided by Ettu=
s research following below page:
>>> USRP Hardware Driver and USRP Manual: Binary Installation (ettus.com)
>>>=20
>>>=20
>>> My System :
>>>=20
>>> NAME=3D"Ubuntu"
>>> VERSION=3D"18.04.5 LTS (Bionic Beaver)"
>>>=20
>>>=20
>>>=20
>>> Error:
>>>=20
>>> root@yy217925:/home/lab_5g/openairinterface5g/openairinterface5g/cmake_t=
argets/lte_build_oai/build# sudo add-apt-repository ppa:ettusresearch/uhd
>>>=20
>>>  More info: https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd
>>> Press [ENTER] to continue or Ctrl-c to cancel adding it.
>>>=20
>>> Hit:1 http://nl.archive.ubuntu.com/ubuntu bionic InRelease
>>> Hit:2 http://nl.archive.ubuntu.com/ubuntu bionic-updates InRelease
>>> Hit:3 http://nl.archive.ubuntu.com/ubuntu bionic-backports InRelease
>>> Hit:4 http://nl.archive.ubuntu.com/ubuntu bionic-security InRelease
>>> Hit:5 http://ppa.launchpad.net/ettusresearch/uhd/ubuntu bionic InRelease=

>>> Hit:7 http://repo.zabbix.com/zabbix/5.0/ubuntu bionic InRelease
>>> Ign:6 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic=
 InRelease
>>> Err:8 https://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic bionic=
 Release
>>>   404  Not Found [IP: 23.253.215.39 443]
>>> Reading package lists... Done
>>> E: The repository 'http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/b=
ionic bionic Release' does not have a Release file.
>>> N: Updating from such a repository can't be done securely, and is theref=
ore disabled by default.
>>> N: See apt-secure(8) manpage for repository creation and user configurat=
ion details.
>>>=20
>>>=20
>>>=20
>>> Please help me solve it !!
>>>=20
>>>=20
>>>=20
>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> This looks like broken PPA infrastructure.  I have a query in to Ettus en=
gineering to see what's going on .
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-E6B3EDF6-1848-4024-AD69-00E036FDF6D7
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Ettus R&amp;D are aware of the issue. But i=
t being Christmas break there likely won=E2=80=99t be any action for a coupl=
e of days.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iP=
hone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 30, 2020, at=
 3:54 PM, Ashutosh Singh &lt;ashutoshsingh7589@gmail.com&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"auto">Any update over it !!</div><div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 29, 2020 at 6:28 PM Marcus D=
. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"></div><div bgcolor=3D"#FFFFFF" t=
ext=3D"#000000">
    <div>On 12/29/2020 12:18 PM, Ashutosh Singh
      via USRP-users wrote:<br>
    </div>
    </div><div bgcolor=3D"#FFFFFF" text=3D"#000000"><blockquote type=3D"cite=
"></blockquote></div><div bgcolor=3D"#FFFFFF" text=3D"#000000"><blockquote t=
ype=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr"><font color=3D"#0000ff">Hi ,</font>
                <div><font color=3D"#0000ff">I am trying to install the
                    UHD libraries&nbsp;using binaries provided by Ettus
                    research following&nbsp;below page:</font></div>
                <div><a href=3D"https://files.ettus.com/manual/page_install.=
html#install_linux" target=3D"_blank">USRP
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
                  <div><font color=3D"#0000ff">NAME=3D"Ubuntu"</font></div>
                  <div><font color=3D"#0000ff">VERSION=3D"18.04.5 LTS
                      (Bionic Beaver)"</font></div>
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
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px">
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>root@yy217925:/home/lab_=
5g/openairinterface5g/openairinterface5g/cmake_targets/lte_build_oai/build#<=
b><font size=3D"4"> sudo add-apt-repository
                              ppa:ettusresearch/uhd</font></b></i></font></d=
iv>
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
                    <div><font color=3D"#0000ff"><i>&nbsp;More info: <a href=
=3D"https://launchpad.net/%7Eettusresearch/+archive/ubuntu/uhd" target=3D"_b=
lank">https://launchpad.net/~ettusresearch/+archive/ubuntu/uhd</a></i></font=
></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Press [ENTER] to
                          continue or Ctrl-c to cancel adding it.</i></font>=
</div>
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
                    <div><font color=3D"#0000ff"><i>Hit:1 <a href=3D"http://=
nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.com=
/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:2 <a href=3D"http://=
nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.com=
/ubuntu</a>
                          bionic-updates InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:3 <a href=3D"http://=
nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.com=
/ubuntu</a>
                          bionic-backports InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:4 <a href=3D"http://=
nl.archive.ubuntu.com/ubuntu" target=3D"_blank">http://nl.archive.ubuntu.com=
/ubuntu</a>
                          bionic-security InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:5 <a href=3D"http://=
ppa.launchpad.net/ettusresearch/uhd/ubuntu" target=3D"_blank">http://ppa.lau=
nchpad.net/ettusresearch/uhd/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Hit:7 <a href=3D"http://=
repo.zabbix.com/zabbix/5.0/ubuntu" target=3D"_blank">http://repo.zabbix.com/=
zabbix/5.0/ubuntu</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>Ign:6 <a href=3D"https:/=
/files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic" target=3D"_blank">http=
s://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                          bionic InRelease</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i style=3D"background-colo=
r:rgb(255,255,0)">Err:8
                          <a href=3D"https://files.ettus.com/binaries/uhd/re=
po/uhd/ubuntu/bionic" target=3D"_blank">https://files.ettus.com/binaries/uhd=
/repo/uhd/ubuntu/bionic</a>
                          bionic Release</i></font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i style=3D"background-colo=
r:rgb(255,255,0)">&nbsp; 404&nbsp;
                          Not Found [IP: 23.253.215.39 443]</i></font></div>=

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
                    <div><font color=3D"#0000ff"><i>E: The repository '<a hr=
ef=3D"http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic" target=3D"=
_blank">http://files.ettus.com/binaries/uhd/repo/uhd/ubuntu/bionic</a>
                          bionic Release' does not have a Release file.</i><=
/font></div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div><font color=3D"#0000ff"><i>N: Updating from such
                          a repository can't be done securely, and is
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
          <blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0=
px">
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
      </blockquote></div><div bgcolor=3D"#FFFFFF" text=3D"#000000"><blockquo=
te type=3D"cite"><pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a>
</pre>
    </blockquote>
    This looks like broken PPA infrastructure.&nbsp; I have a query in to
    Ettus engineering to see what's going on .<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</div></blockquote></div></body></html>=

--Apple-Mail-E6B3EDF6-1848-4024-AD69-00E036FDF6D7--


--===============8798433642572456329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8798433642572456329==--

