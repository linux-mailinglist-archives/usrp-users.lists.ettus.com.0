Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 490416C216
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 22:28:29 +0200 (CEST)
Received: from [::1] (port=46672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnqXK-0002YQ-AW; Wed, 17 Jul 2019 16:28:26 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:38870)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <saeidh@gmail.com>) id 1hnqXG-0002Ss-Sp
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 16:28:23 -0400
Received: by mail-lj1-f180.google.com with SMTP id r9so24962507ljg.5
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 13:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2Gv9Q1QxAegwg3P2a8nVinA2S7zSiRz4Mfk/B3PSh/o=;
 b=mELmil0dgusuzsl3evD49mJ3gxDa40+kf0gIe0uverwV/UVee6dB5KXK9VI81gF+yF
 KDcjlkJtkL24akB2bkJPzUEAKqp/mYhBzJ4yWGYz51amDdD+4ig5XYTZDu2USTi1qMUG
 eRWDgwJ+/cscsYn5Sn8BeMxgrFxnUD/vdmoHdtUIzzu4FCGOI1yOE7eSLpaU8QIPvrsz
 +zz9IzpbIgr0MDIbQBL5qnblwq2d5KlHw1odhreM5sAKUkl7nM0pIQAy2q9sFpAmt1KJ
 Smfw5i+I3S02HV6Z3W6wpVs9LTem5178VdarwAPzmWYsj9fvq8Hu9y6CRyiuEbGsBe79
 untg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Gv9Q1QxAegwg3P2a8nVinA2S7zSiRz4Mfk/B3PSh/o=;
 b=bCXREiPzW6IeU/iaj5Zv18xW4niELI4QfSpfoFfiROQ2dRARh4M1DHGKsHsJ8sxJ7c
 2rXzFdlxmsXB4xAhsyJUaE3izmHPaqusq1+nlUsxLQvZPumyZLdvNIsFTi62C4VypZwS
 gEq8LetOGqr32j2zZS+aCFoaA9P0MDu4coBqY/wfdD3QhSAt0ES/s6EVOXXwmaA2d/6I
 +ikV9ZXIM3fIRIliTjNkPRHzHHYwU/yAao6V3Km6ONbPGePMZvt3r+a3UQuqSiKD4rS3
 a+0si/GrBaTzzMt3zxDGOVJgRNMrgOyk3V24neHAqsHy+cDEnZhwPmqYbHupOlFOYPMI
 7HMQ==
X-Gm-Message-State: APjAAAUNyTEnc44pdsK0EmJY7nChNadu6xCUpYvOYaC1UILeuLrLiVDz
 ddi4abuvWWOaUM4heukkbWrD6zMEMB7eRt3NWiY=
X-Google-Smtp-Source: APXvYqxcHLF2YRGQVn5ldxg5nhkaTeD+02sjoUVYikYQqkYIN0c3zLdQ9NRxM7hmOfMd9UBtiwcWGN4eOK/Kql22WL8=
X-Received: by 2002:a2e:9cd1:: with SMTP id g17mr22555530ljj.234.1563395261434; 
 Wed, 17 Jul 2019 13:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
 <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
 <5D250B39.5030201@gmail.com>
 <CANQ3h39ULfW=PdioX9rnneZgWQGCNzUzcE7MXOzzwpEa_9_2cw@mail.gmail.com>
 <389840B8-0CD7-4044-BE7B-E685C34E0D26@gmail.com>
In-Reply-To: <389840B8-0CD7-4044-BE7B-E685C34E0D26@gmail.com>
Date: Wed, 17 Jul 2019 16:27:29 -0400
Message-ID: <CANQ3h38RWzTzdOmqxTDHUYy-VrskWTNqspyyywwiQLWVWT8kog@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
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
From: Saeid Hashemi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Saeid Hashemi <saeidh@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0741157961256270700=="
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

--===============0741157961256270700==
Content-Type: multipart/alternative; boundary="000000000000338db1058de65357"

--000000000000338db1058de65357
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can I modify it to link against the current version?

On Tue, Jul 16, 2019 at 5:18 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Yes so it=E2=80=99s very likely a compatibility issue.
>
> Your GNURadio install would have installed uhd_fft and likely linked
> against a different UHD version
>
>
> Sent from my iPhone
>
> On Jul 16, 2019, at 4:30 PM, Saeid Hashemi <saeidh@gmail.com> wrote:
>
> Hi Marcus,
> I appreciate your reply,
>
> I did some digging, and it seems I only have this instance of UHD
> installed. How would I troubleshoot this?
> Would the best solution be to simply reinstall?
>
> My setup is that I installed Open Air Interface, and UHD has been
> installed automatically by that.
> The other commands work, such as uhd_usrp_probe, as well as Open Air
> Interface's radio software, softmodem UE and eNB.
>
> Regards,
> Saeid
>
> On Tue, Jul 9, 2019 at 5:47 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 07/09/2019 04:41 PM, Saeid Hashemi via USRP-users wrote:
>>
>> To include context, the uhd_config_info command shows the following:
>>
>> linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.010.002.000-release
>>
>> And uname -a:
>>
>> Linux nuc03 3.19.0-61-lowlatency #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun =
9
>> 10:15:00 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
>>
>> The command line output from uhd_fft only shows the following:
>>
>> Segmentation fault (core dumped)
>>
>>
>> My guess is that your uhd_fft was linked against a different version of
>> the UHD library than you currently have on your system.
>>
>>
>>
>> On Tue, Jul 9, 2019 at 4:10 PM Saeid Hashemi <saeidh@gmail.com> wrote:
>>
>>> Hi all,
>>>
>>> Running the command "uhd_fft" has been giving this result for me, would
>>> anyone have a recommendation on how to fix the issue?
>>>
>>> Thanks and regards,
>>> Saeid
>>>
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000338db1058de65357
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Can I modify it to link against the current version?=
</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Jul 16, 2019 at 5:18 PM Marcus D Leech &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Yes so it=E2=80=99s ver=
y likely a compatibility issue.=C2=A0<div><br></div><div>Your GNURadio inst=
all would have installed uhd_fft and likely linked against a different UHD =
version</div><div><br><br><div id=3D"m_2471776585718876323AppleMailSignatur=
e" dir=3D"ltr">Sent from my iPhone</div></div></div><div dir=3D"auto"><div>=
<div dir=3D"ltr"><br>On Jul 16, 2019, at 4:30 PM, Saeid Hashemi &lt;<a href=
=3D"mailto:saeidh@gmail.com" target=3D"_blank">saeidh@gmail.com</a>&gt; wro=
te:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr=
">Hi Marcus,<div>I appreciate your reply,</div><div><br></div><div>I did so=
me digging, and it seems I only have this instance of UHD installed. How wo=
uld I troubleshoot this?</div><div>Would the best solution be to simply rei=
nstall?</div><div><br></div><div>My setup is that I installed Open Air Inte=
rface, and UHD has been installed automatically by that.</div><div>The othe=
r commands work, such as uhd_usrp_probe, as well as Open Air Interface&#39;=
s radio software, softmodem UE and eNB.</div><div><br></div><div>Regards,</=
div><div>Saeid</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Jul 9, 2019 at 5:47 PM Marcus D. Leech via USRP=
-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"m_2471776585718876323gmail-m_6981431435061401222moz-cite-=
prefix">On 07/09/2019 04:41 PM, Saeid Hashemi
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
        <div style=3D"margin-left:40px">Segmentation fault (core dumped)</d=
iv>
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 9, 2019 at 4:10 P=
M
          Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com" target=3D"_=
blank">saeidh@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">Hi all,
            <div><br>
            </div>
            <div>Running the command &quot;uhd_fft&quot; has been giving th=
is
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
      <fieldset class=3D"m_2471776585718876323gmail-m_6981431435061401222mi=
meAttachmentHeader"></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"m_2471776585718876323gmail-m_6981431435061401222moz-txt-link-ab=
breviated" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USR=
P-users@lists.ettus.com</a>
<a class=3D"m_2471776585718876323gmail-m_6981431435061401222moz-txt-link-fr=
eetext" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></div></blockquote></div></div>

--000000000000338db1058de65357--


--===============0741157961256270700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0741157961256270700==--

