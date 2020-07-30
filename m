Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 758362329D7
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jul 2020 04:17:20 +0200 (CEST)
Received: from [::1] (port=44978 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0y8C-0005YS-9Z; Wed, 29 Jul 2020 22:17:16 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:37360)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <zh.heng96@gmail.com>) id 1k0y89-0005ST-9y
 for usrp-users@lists.ettus.com; Wed, 29 Jul 2020 22:17:13 -0400
Received: by mail-ot1-f50.google.com with SMTP id l26so2454560otj.4
 for <usrp-users@lists.ettus.com>; Wed, 29 Jul 2020 19:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4myqYPzKHSRRPCIsK39pZ/8VXXA7JRV6Q6OAFvQnhoA=;
 b=m0NwXGMaW4xPJvqZq+HcKu11+R2cc7oFjlRALVQZA2OGkA8KLQCkkYElQUJB1ZKZ+i
 o/Cg6K1AG25YfndkL6jZRax2BgGREZ+ON4bvLspan5qLAxpcEwa+eEjDbfYjQOlJr3df
 J+TowkOhFMACQnUwY8rARNyOH/YS3TbpskvGv5nQxz/cDazc/L0b816quhYcGIKYKeGF
 ow+nuxswQ8LEDPSN0LfxpXE6+tgIjRwq/m4WXKJX1Vv5Sc0nUt24mGV0/cWomxoP2Aat
 RtHx42NYYCmegH2GDSVm6rSSXpBoD2uzPPVz+pDlfl/XV+nsHM2cqGsXSpWFyumgYt4/
 dZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4myqYPzKHSRRPCIsK39pZ/8VXXA7JRV6Q6OAFvQnhoA=;
 b=XVvnLb1IskhUuMnOrksFODkGr7ILQQx+VVvVQJLJaMJ4QZ3CrTCySXhMX2ThSvvdWH
 qYorADzC43xks3TYdQi8M+SytUAhxfgpPKcBZdLo3oQiq63J0dFSKnskMDKyXhghUGCx
 WBAJ0IdqyC9dZlO2dPkp7Os2fLincFqiV89sgyoEWMYMYrfPoIVhDMpY4cfHlhqE7S/9
 OM2nZM5Zf6dTRLEdWLibhRx8LUhgzAI7bPkC2kXLDQfdqWBEv35tffeGsXbzS1QHGBGD
 X/43C1Zj5FSCp5vHVnAfdw2wfOtzgaF5asGvDrkh04VRzgaSNIzIVaTKtTZrcynbKXhF
 NAOw==
X-Gm-Message-State: AOAM533GUX0csTiXHF9nuOwj2f3IM02grnejB0X5OcIthm8FXG8Bd+01
 17zjtF+MZGoZkZqxs+ylYRj7s+Hz1dbSd8MeAVxYZhEw
X-Google-Smtp-Source: ABdhPJzO+t0KFQMYusESRQ1puC1Y8Q5Wfug8pFbSoiGOXIOhk/AJGzvSNRryuCF9l5TQ1fwjGpIC+/kbZMvuqYEiwpU=
X-Received: by 2002:a9d:6d0c:: with SMTP id o12mr573779otp.249.1596075392249; 
 Wed, 29 Jul 2020 19:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAM_mTRyRd2B7x0ab+K4hT+O+FSWhz-kOsdUGd-ZkZtDZkgKrg@mail.gmail.com>
 <5F216EA2.2000300@gmail.com>
 <1596027782808.5sfxlqzhnayn1yyxszocts5i@android.mail.163.com>
 <CAB__hTSwjcVT6u_h-spQ5+pk-=VV0QJDa0QBnYw3bMCt2Db=Cg@mail.gmail.com>
In-Reply-To: <CAB__hTSwjcVT6u_h-spQ5+pk-=VV0QJDa0QBnYw3bMCt2Db=Cg@mail.gmail.com>
Date: Thu, 30 Jul 2020 10:16:20 +0800
Message-ID: <CAAM_mTTLSt=HO80J1f1=zNncevrdeyZ3jWK3NxzOse8nXv+ofQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] SFP port1 of USRP N310 does not work
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
From: Heng Zhang via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Heng Zhang <zh.heng96@gmail.com>
Content-Type: multipart/mixed; boundary="===============3103721561423040014=="
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

--===============3103721561423040014==
Content-Type: multipart/alternative; boundary="000000000000ca322905ab9f4209"

--000000000000ca322905ab9f4209
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

  I found the SPF+ to RJ45 adapter I used only supports max 1.25Gb data
rate. I will get a 10 Gb adapter. Btw, what type of wiring should I use,
cat.6. or cat.7?

Rob Kossler <rkossler@nd.edu> =E4=BA=8E2020=E5=B9=B47=E6=9C=8829=E6=97=A5=
=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=889:45=E5=86=99=E9=81=93=EF=BC=9A

> Are you using the XG version of the FPGA image?
>
> On Wed, Jul 29, 2020 at 9:03 AM Heng Zhang via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> The SFP+ module and optical I used are attchment when buying USRP N310. =
I
>> will check them.
>>
>> Heng Zhang
>> =E9=82=AE=E7=AE=B1=EF=BC=9Azh.heng96@gmail.com
>>
>> <https://maas.mail.163.com/dashi-web-extend/html/proSignature.html?&name=
=3DHeng+Zhang&uid=3Dzh.heng96%40gmail.com&ftlId=3D1&iconUrl=3Dhttps%3A%2F%2=
Fmail-online.nosdn.127.net%2Fqiyelogo%2FdefaultAvatar.png&items=3D%5B%22%E9=
%82%AE%E7%AE%B1%EF%BC%9Azh.heng96%40gmail.com%22%5D>
>>
>> =E7=AD=BE=E5=90=8D=E7=94=B1 =E7=BD=91=E6=98=93=E9=82=AE=E7=AE=B1=E5=A4=
=A7=E5=B8=88 <https://mail.163.com/dashi/dlpro.html?from=3Dmail88> =E5=AE=
=9A=E5=88=B6
>>
>> On 07/29/2020 20:42, Marcus D. Leech via USRP-users
>> <usrp-users@lists.ettus.com> wrote:
>> On 07/29/2020 08:14 AM, Heng Zhang via USRP-users wrote:
>>
>> Dear community,
>>
>> I follow this guide
>> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide  and
>> now I can connect to N310 by RJ45 port. And I also can connect to SFP
>> port0. However, when I  try to use SFP port1, it does not work. I found
>> that the green LED above SFP port 1 does not even illuminate after
>> connecting the PC to it. The network interface configuration of PC is sh=
own
>> as follows
>>
>> enp1s0    Link encap:Ethernet  HWaddr d4:5d:64:9c:d1:86
>>           inet addr:192.168.20.1  Bcast:192.168.20.255  Mask:255.255.255=
.0
>>           inet6 addr: fe80::3ac5:ee40:457b:3554/64 Scope:Link
>>           UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1
>>           RX packets:1311 errors:0 dropped:0 overruns:0 frame:0
>>           TX packets:1937 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:1000
>>           RX bytes:191173 (191.1 KB)  TX bytes:249297 (249.2 KB)
>>
>> How can I use 10 Gb SFP port1? Any advice would be appreciated.
>>
>> Regards,
>> Heng
>>
>> My guess is that you have a problem with your cabling, or the SFP+ modul=
e
>> that you plugged in to the USRP.
>>
>> What SFP+ module are you using?  What type of wiring/optical?
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000ca322905ab9f4209
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 I found the=C2=A0SPF+=C2=A0to RJ45 adapter I used o=
nly supports max 1.25Gb data rate. I will get a 10 Gb adapter. Btw, what ty=
pe of wiring should I use, cat.6. or cat.7?=C2=A0=C2=A0<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Rob Kossler &lt;=
<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; =E4=BA=8E2020=E5=
=B9=B47=E6=9C=8829=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8B=E5=8D=889:45=E5=86=
=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Are you using the XG version of the FPGA image?</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, Jul 29, 2020 at 9:03 AM Heng Zhang via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

   =20

<div>
<div style=3D"line-height:1.6;font-family:=E8=8B=B9=E6=96=B9,=E5=BE=AE=E8=
=BD=AF=E9=9B=85=E9=BB=91,sans-serif">The SFP+ module and optical I used are=
 attchment when buying USRP N310. I will check them.<br><br></div><div>    =
    <a href=3D"https://maas.mail.163.com/dashi-web-extend/html/proSignature=
.html?&amp;name=3DHeng+Zhang&amp;uid=3Dzh.heng96%40gmail.com&amp;ftlId=3D1&=
amp;iconUrl=3Dhttps%3A%2F%2Fmail-online.nosdn.127.net%2Fqiyelogo%2FdefaultA=
vatar.png&amp;items=3D%5B%22%E9%82%AE%E7%AE%B1%EF%BC%9Azh.heng96%40gmail.co=
m%22%5D" style=3D"display:block;background:rgb(255,255,255);max-width:400px=
;padding:15px 0px 10px;text-decoration:none;outline:none" target=3D"_blank"=
>
            <table cellpadding=3D"0" style=3D"width:100%;max-width:100%;tab=
le-layout:fixed;border-collapse:collapse;color:rgb(155,158,161);font-size:1=
4px;line-height:1.3">
                <tbody style=3D"word-break:break-all;font-family:&quot;Ping=
Fang SC&quot;,&quot;Hiragino Sans GB&quot;,&quot;WenQuanYi Micro Hei&quot;,=
&quot;Microsoft Yahei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,verdana">
                    <tr>
                            <td width=3D"38" style=3D"padding:0px;box-sizin=
g:border-box;width:38px">
                                <img width=3D"38" height=3D"38" style=3D"ve=
rtical-align: middle; width: 38px; height: 38px; border-radius: 50%;" src=
=3D"https://mail-online.nosdn.127.net/qiyelogo/defaultAvatar.png">
                            </td>
                            <td style=3D"padding:0px 0px 0px 10px;color:rgb=
(49,53,59)">
                                <div style=3D"font-size:16px;font-weight:bo=
ld;width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis">He=
ng Zhang</div>
                            </td>
                    </tr>
                        <tr width=3D"100%" style=3D"width:100%;font-size:14=
px">
                            <td colspan=3D"2" style=3D"padding:10px 0px 0px=
;width:100%;font-size:14px">
                                    <div style=3D"width:100%;word-break:bre=
ak-all;font-size:14px">=E9=82=AE=E7=AE=B1=EF=BC=9Azh.heng96@gmail.com</div>
                            </td>
                        </tr>
                </tbody>
            </table>
        </a><div><p style=3D"border-top:1px solid rgb(229,229,229);padding-=
top:8px;font-size:12px;color:rgb(182,184,187);line-height:1.833">=E7=AD=BE=
=E5=90=8D=E7=94=B1 <a href=3D"https://mail.163.com/dashi/dlpro.html?from=3D=
mail88" style=3D"color:rgb(106,168,246);text-decoration:none" target=3D"_bl=
ank">=E7=BD=91=E6=98=93=E9=82=AE=E7=AE=B1=E5=A4=A7=E5=B8=88</a> =E5=AE=9A=
=E5=88=B6</p></div><blockquote id=3D"gmail-m_7050889868639765546gmail-m_526=
6112649428560500ntes-andriodmail-quote" style=3D"margin:0px;padding:0px;bor=
der:none"><blockquote id=3D"gmail-m_7050889868639765546gmail-m_526611264942=
8560500ntes-andriodmail-quote" style=3D"margin:0px;padding:0px;border:none"=
><div style=3D"background-color:rgb(242,242,242);color:black;padding-top:6p=
x;padding-bottom:6px;border-radius:3px;margin-top:45px;margin-bottom:20px">
    <div style=3D"font-size:14px;line-height:1.5;word-break:break-all;margi=
n-left:10px;margin-right:10px">On <span>07/29/2020 20:42</span>, <a style=
=3D"text-decoration:none;color:rgb(42,151,255)" href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">Marcus D. Leech via USRP-users</a> wrote:=
</div>
</div>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/29/2020 08:14 AM, Heng Zhang via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Dear community,
        <div><br>
        </div>
        <div><span style=3D"font-family:Arial;font-size:14px">I follow
            this guide=C2=A0</span><a href=3D"https://kb.ettus.com/USRP_N30=
0/N310/N320/N321_Getting_Started_Guide" style=3D"color:rgb(6,73,119);font-f=
amily:Arial;font-size:14px" target=3D"_blank">https://kb.ettus.com/USRP_N30=
0/N310/N320/N321_Getting_Started_Guide</a><span style=3D"font-family:Arial;=
font-size:14px">=C2=A0 and now I can
            connect to N310 by RJ45 port. And I also can connect to SFP
            port0. However, when I=C2=A0 try to use SFP port1, it does not
            work. I found that the green LED above SFP port 1 does not
            even illuminate after connecting the PC to it. The network
            interface configuration of PC is shown as follows</span></div>
        <div><span style=3D"font-family:Arial;font-size:14px"><br>
          </span></div>
        <div>enp1s0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr d4:5d:64:=
9c:d1:86 =C2=A0<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:192.168.20.1 =C2=A0B=
cast:192.168.20.255
          =C2=A0Mask:255.255.255.0<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 addr: fe80::3ac5:ee40:45=
7b:3554/64 Scope:Link<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP BROADCAST RUNNING MULTICAST=
 =C2=A0MTU:9000 =C2=A0Metric:1<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:1311 errors:0 dropp=
ed:0 overruns:0
          frame:0<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:1937 errors:0 dropp=
ed:0 overruns:0
          carrier:0<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:1000 <=
br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:191173 (191.1 KB) =C2=
=A0TX bytes:249297 (249.2
          KB)<span style=3D"font-family:Arial;font-size:14px"><br>
          </span></div>
        <div><span style=3D"font-family:Arial;font-size:14px"><br>
          </span></div>
        <div><font color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style=3D"font-size:14px">How can I
              use 10 Gb SFP port1? Any advice would be appreciated.</span><=
/font></div>
        <div><font color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style=3D"font-size:14px"><br>
            </span></font></div>
        <div><font color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style=3D"font-size:14px">Regards,</sp=
an></font></div>
        <div><font color=3D"#000000" face=3D"Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style=3D"font-size:14px">Heng</span><=
/font></div>
      </div>
      <br>
    </blockquote>
    My guess is that you have a problem with your cabling, or the SFP+
    module that you plugged in to the USRP.<br>
    <br>
    What SFP+ module are you using?=C2=A0 What type of wiring/optical?<br>
    <br>
    <br>
  </div>

</blockquote></blockquote></div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000ca322905ab9f4209--


--===============3103721561423040014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3103721561423040014==--

