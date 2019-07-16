Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4086B0F6
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jul 2019 23:19:09 +0200 (CEST)
Received: from [::1] (port=45264 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnUqq-0008Rd-5W; Tue, 16 Jul 2019 17:19:08 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:39015)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hnUqn-0008Lx-3d
 for usrp-users@lists.ettus.com; Tue, 16 Jul 2019 17:19:05 -0400
Received: by mail-qt1-f181.google.com with SMTP id l9so21150745qtu.6
 for <usrp-users@lists.ettus.com>; Tue, 16 Jul 2019 14:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4yIw7w2qfENKmykXmMAlAllAqz60kRJpesGauS5TAWw=;
 b=nYucmMyytIwhSF716MSMyJiD1ChEtHrRwpMWPlK7GLkCb/nJl6OCDiT3FJ3t2F80jx
 Gu6pkJ7aToeceNDmJW+dFqYdaHKmo2vViVSozJQQqVi7Ab5WQQMPl76UvZcmkXXbjSqc
 f2cZKtQgSNDLwBwjaye28SuMhy0ws+UJI30LVMNEgw1kxi5pjtemF4Ema6gDwshtsz8l
 YYHKaFVg2Si/Tn0MeGhxmwakQjyKqx1/EZ6WQ9ziEUrk1mz1trOsq9Ks2uejQE3a4azI
 +m40CjG8CXjjXTm+lB+zVWM97/+uVtwqEdPEnu1Wvg87MwXti58DXxtBiXQq5Ys54kFz
 NRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=4yIw7w2qfENKmykXmMAlAllAqz60kRJpesGauS5TAWw=;
 b=TZO590E6CmPFPAygNFDPqRSpjwP0wFs9lM/y/MhDjugDJSbONl4aWY+QaXMBj65nWK
 8fVweiLHPZoXP2ML32Z/1d3lP4ddZBOpmJiJc4wqZ2Gm+txhz/3/Rz0M7Gh2/KWIQufm
 UIprJP5emwVzxO7a9YbY1qM9OCrehIcSIZ15/USgZXBzLbuAKbHnvyqK/m4dY/HbHH8l
 nvqV59PaNNe3V38Osf8wjYeeuZlS0pMyVgVI31rsYKc71ywoggLNIM3w4NLwuIL8+Wsd
 lkfVrd5JEZi7YdQ3VR8Ll5E+imTCgnZN0Z75ZRhw/GujTcy1o/BQv8Z4kMPPBElzTFsC
 hr4g==
X-Gm-Message-State: APjAAAWThgDkpOQyzD+scUXfJSTl7wVZtPfzv3Z86ZFJvtMcalgLJYTR
 q6x0lHju1wWWZk4UNLITM7o=
X-Google-Smtp-Source: APXvYqwN81pLmGOiL+0cDrZjKWjxh95OJE107+JyWDnzPtG/UJnwNBnzgXmPESSP26HfQWqtGJr0oQ==
X-Received: by 2002:ac8:1c65:: with SMTP id j34mr24563866qtk.323.1563311904508; 
 Tue, 16 Jul 2019 14:18:24 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id q3sm9990337qkq.133.2019.07.16.14.18.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 14:18:23 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <CANQ3h39ULfW=PdioX9rnneZgWQGCNzUzcE7MXOzzwpEa_9_2cw@mail.gmail.com>
Date: Tue, 16 Jul 2019 17:18:23 -0400
Message-Id: <389840B8-0CD7-4044-BE7B-E685C34E0D26@gmail.com>
References: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
 <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
 <5D250B39.5030201@gmail.com>
 <CANQ3h39ULfW=PdioX9rnneZgWQGCNzUzcE7MXOzzwpEa_9_2cw@mail.gmail.com>
To: Saeid Hashemi <saeidh@gmail.com>
Subject: Re: [USRP-users] Command uhd_fft throwing seg fault (core dumped)
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6114930369669232899=="
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


--===============6114930369669232899==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-1878F2DF-D572-4DA4-A6EA-6FAB365284C2
Content-Transfer-Encoding: 7bit


--Apple-Mail-1878F2DF-D572-4DA4-A6EA-6FAB365284C2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yes so it=E2=80=99s very likely a compatibility issue.=20

Your GNURadio install would have installed uhd_fft and likely linked against=
 a different UHD version


Sent from my iPhone

> On Jul 16, 2019, at 4:30 PM, Saeid Hashemi <saeidh@gmail.com> wrote:
>=20
> Hi Marcus,
> I appreciate your reply,
>=20
> I did some digging, and it seems I only have this instance of UHD installe=
d. How would I troubleshoot this?
> Would the best solution be to simply reinstall?
>=20
> My setup is that I installed Open Air Interface, and UHD has been installe=
d automatically by that.
> The other commands work, such as uhd_usrp_probe, as well as Open Air Inter=
face's radio software, softmodem UE and eNB.
>=20
> Regards,
> Saeid
>=20
>> On Tue, Jul 9, 2019 at 5:47 PM Marcus D. Leech via USRP-users <usrp-users=
@lists.ettus.com> wrote:
>>> On 07/09/2019 04:41 PM, Saeid Hashemi via USRP-users wrote:
>>> To include context, the uhd_config_info command shows the following:
>>>=20
>>> linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.010.002.000-release
>>>=20
>>> And uname -a:
>>>=20
>>> Linux nuc03 3.19.0-61-lowlatency #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun 9=
 10:15:00 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
>>>=20
>>> The command line output from uhd_fft only shows the following:
>>>=20
>>> Segmentation fault (core dumped)
>>>=20
>>>=20
>> My guess is that your uhd_fft was linked against a different version of t=
he UHD library than you currently have on your system.
>>=20
>>=20
>>>=20
>>>> On Tue, Jul 9, 2019 at 4:10 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>>> Hi all,
>>>>=20
>>>> Running the command "uhd_fft" has been giving this result for me, would=
 anyone have a recommendation on how to fix the issue?
>>>>=20
>>>> Thanks and regards,
>>>> Saeid
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-1878F2DF-D572-4DA4-A6EA-6FAB365284C2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yes so it=E2=80=99s very likely a compatibi=
lity issue.&nbsp;<div><br></div><div>Your GNURadio install would have instal=
led uhd_fft and likely linked against a different UHD version</div><div><br>=
<br><div id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><div=
 dir=3D"ltr"><br>On Jul 16, 2019, at 4:30 PM, Saeid Hashemi &lt;<a href=3D"m=
ailto:saeidh@gmail.com">saeidh@gmail.com</a>&gt; wrote:<br><br></div><blockq=
uote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,<div>I apprec=
iate your reply,</div><div><br></div><div>I did some digging, and it seems I=
 only have this instance of UHD installed. How would I troubleshoot this?</d=
iv><div>Would the best solution be to simply reinstall?</div><div><br></div>=
<div>My setup is that I installed Open Air Interface, and UHD has been insta=
lled automatically by that.</div><div>The other commands work, such as uhd_u=
srp_probe, as well as Open Air Interface's radio software, softmodem UE and e=
NB.</div><div><br></div><div>Regards,</div><div>Saeid</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 9, 201=
9 at 5:47 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_6981431435061401222moz-cite-prefix">On 07/09/2019 0=
4:41 PM, Saeid Hashemi
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>To include context, the uhd_config_info command shows the
          following:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">linux; GNU C++ version 4.8.4;
          Boost_105400; UHD_003.010.002.000-release<br>
        </div>
        <div><br>
        </div>
        <div>And uname -a:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">Linux nuc03 3.19.0-61-lowlatency
          #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun 9 10:15:00 UTC 2016
          x86_64 x86_64 x86_64 GNU/Linux</div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div>The command line output from uhd_fft only shows the
          following:</div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px">Segmentation fault (core dumped)</di=
v>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div style=3D"margin-left:40px"><br>
        </div>
      </div>
    </blockquote>
    My guess is that your uhd_fft was linked against a different version
    of the UHD library than you currently have on your system.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 9, 2019 at 4:10 PM=

          Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_b=
lank">saeidh@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi all,
            <div><br>
            </div>
            <div>Running the command "uhd_fft" has been giving this
              result for me, would anyone have a recommendation on how
              to fix the issue?</div>
            <div><br>
            </div>
            <div>Thanks and regards,</div>
            <div>Saeid</div>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"gmail-m_6981431435061401222mimeAttachmentHeader"></=
fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_6981431435061401222moz-txt-link-abbreviated" href=3D"mai=
lto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com=
</a>
<a class=3D"gmail-m_6981431435061401222moz-txt-link-freetext" href=3D"http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_bla=
nk">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-1878F2DF-D572-4DA4-A6EA-6FAB365284C2--


--===============6114930369669232899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6114930369669232899==--

