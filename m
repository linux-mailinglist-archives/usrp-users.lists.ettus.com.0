Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D45F33F925
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 20:28:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D87F38383D
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 15:28:25 -0400 (EDT)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E50A383320
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 15:27:32 -0400 (EDT)
Received: by mail-ej1-f44.google.com with SMTP id l4so151088ejc.10
        for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 12:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ti/Ue8gm2g0j+2XXq4owmKwxzW0/9/80Zn8mAgVLNq4=;
        b=uVWrpZV/bQ1L6lyXMvzmT/l5tV1VNiy8UET5wasaaQzxLhhs2srnOi/QkK6aJXLkQN
         XGHUOz3S/SalFPyTSEtBbbFNH9e1yQyJ8Ds7oIyRQz3BtoJ38v7W9sXtXyi1SIHuIYTp
         bkTJC64gNKTfbLXcGuHPgAnXIGjL/2xzhamRbuucPGYmQsqDYx5fyM9iswXKk4zTGjek
         YN93qr4qS53ZIG3KpQ88jJQteSmQHxbECKqvNvm2zHFwvGuJBPnDkNycE/w2OkdFvQzQ
         5Jw5WWytjtvMiK/n37yjaoAn0bnA5VLcMhhrbb3R5pq57ZC/8z3dh5YV7rBFYba9Fsk+
         NbGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ti/Ue8gm2g0j+2XXq4owmKwxzW0/9/80Zn8mAgVLNq4=;
        b=oRJNzcD4M6UQAoL1tOtpH85wfE6Amj7hwUxWsFMBCoFELix1FcgqkV0lZHbnLgUqSx
         kwrpDEEQ9YD999Vh27fJ8hkMkrJl9EMaiOdtSKfrMDZjetwVaQZ8NbIAzb/k/TOdJy3Y
         Gb82y6V5Zc3coavxF5iweMY3jVRR+aMYULYq/esYw8poZUpCol8HqQcZOBF8VqHGdlBi
         918tjYzWHGzk6ZE5wBiXPDwNKGfiwtE5oBNf319oXh3JHouBrMFUg70X6mekss3lxuLN
         SvMbPGUz8HHX1/42JXeRrp/KegFcbqzWodJm0Bp7grAttJRsJ1OpqzoiUmxnVC7QqTVE
         +cfQ==
X-Gm-Message-State: AOAM532d8DPPqWUoRvNgKQngiCoA8zYtiPjhQOn1mzw5h8LNibgVRw/V
	LDauOA8z8rFqXeBNDR4fI/lM0P57su9L0r6IoyA=
X-Google-Smtp-Source: ABdhPJz/7tsWU1Gm6k9W9Y5kJHPLH93pE89FKGl+O2NCht7W9PsdUJbUfkrVbBoTyZ0fJDJgJaJjAC/FDDRzO7aSdRw=
X-Received: by 2002:a17:906:fa04:: with SMTP id lo4mr37198941ejb.44.1616009252065;
 Wed, 17 Mar 2021 12:27:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAGu8PGw-Cx7RfdQ8b7hDp6F2bhV0ASYACsL9qGa2DY0z6nrCmA@mail.gmail.com>
 <CAL7q81sF0taRktoO2jhHgXv75REgp1M3_OD9aozAGVYZOK-f6A@mail.gmail.com>
In-Reply-To: <CAL7q81sF0taRktoO2jhHgXv75REgp1M3_OD9aozAGVYZOK-f6A@mail.gmail.com>
From: Sunny Sam <sunny04sam@gmail.com>
Date: Wed, 17 Mar 2021 15:27:21 -0400
Message-ID: <CAGu8PGyvcacsQ52qPW38GoSzfkeYkBkphQptVKd+4Q=o4TUE3w@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: G75N7NMZSUSS446KVP7M2UPJYQWXGONR
X-Message-ID-Hash: G75N7NMZSUSS446KVP7M2UPJYQWXGONR
X-MailFrom: sunny04sam@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 3 tutorial rfnoc_gain_example.cpp file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G75N7NMZSUSS446KVP7M2UPJYQWXGONR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6610453812167133376=="

--===============6610453812167133376==
Content-Type: multipart/alternative; boundary="0000000000006c557205bdc07909"

--0000000000006c557205bdc07909
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,

Thank you very much! That is exactly what I was looking for.

Best,




On Wed, Mar 17, 2021 at 2:52 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hi Sunny,
>
> I have attached the file.
>
> Jonathon
>
> On Mon, Mar 15, 2021 at 7:06 PM Sunny Sam <sunny04sam@gmail.com> wrote:
>
>> I would like to use the *rfnoc_gain_example.cpp* file to test the gain
>> block I created following the RFNoC 4 workshop tutorial. It was provided
>> with the RFNoC 3 tutorial in  /rfnoc-workshop/src/gain-app-example/  but I
>> can seem to be able to find it.
>>
>> The file is referenced in the
>> https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part_2.pdf
>> page 105.
>>
>> Any help would be greatly appreciated.
>>
>> Thanks,
>> Sunny
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000006c557205bdc07909
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0Jonathon,</div><div><br></div>Thank you very =
much! That is exactly what I was looking for.=C2=A0<div><br></div><div>Best=
,=C2=A0</div><div><br><div><br></div><div><br></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 17, 2=
021 at 2:52 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettu=
s.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Sunn=
y,<div><br></div><div>I have attached the file.</div><div><br></div><div>Jo=
nathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Mar 15, 2021 at 7:06 PM Sunny Sam &lt;<a href=3D"mailto=
:sunny04sam@gmail.com" target=3D"_blank">sunny04sam@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><div>I would like to use the <b>rfnoc_gain_example.cpp</b> file to test =
the gain block I created following the RFNoC 4 workshop tutorial. It was pr=
ovided with the RFNoC 3 tutorial in=C2=A0

/rfnoc-workshop/src/gain-app-example/=C2=A0

 but I can seem to be able to find it.=C2=A0 =C2=A0=C2=A0</div><div><div></=
div></div><div>=C2=A0=C2=A0<br></div>The file is referenced in the=C2=A0<a =
href=3D"https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part=
_2.pdf" target=3D"_blank">https://kb.ettus.com/images/f/f6/rfnoc3_workshop_=
slides_202008_part_2.pdf</a> page 105.<div><div><br></div><div>Any help=C2=
=A0would be greatly appreciated.=C2=A0</div><div><br></div><div> </div><div=
>Thanks,<br></div><div>Sunny=C2=A0</div><div><br></div><div><br></div></div=
></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000006c557205bdc07909--

--===============6610453812167133376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6610453812167133376==--
