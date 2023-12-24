Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F32AE81DBC8
	for <lists+usrp-users@lfdr.de>; Sun, 24 Dec 2023 19:28:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EC5D383A45
	for <lists+usrp-users@lfdr.de>; Sun, 24 Dec 2023 13:28:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703442505; bh=8dRYcDSkWSx9aklBBPPpJbgznYmFRbuSaP3iT44eUmc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=j22YwYqGeYmpftjbBWMti2V0+GLtsr0hehUnhr+r2vQv2J8OMrm1QmXrLY15YREY3
	 h3PRfav8Jt8kGR9hA5Sid4JEcxNcph0LPDOfdlS0mN8jaOtVCwfMsaFDKgOynE5Snr
	 6pd7Yp2myL6ujenYmMmSiB1vdWJvuLkJHHtDRUjhmoIkSKqt0oKg5NTk+gXGpXkX8w
	 kj9TQt4Fy9omd+I1wOsnWHEEa1r9uHtkIjwLLlomns0E/6kWZp1OLTPoZc7B2LeWjW
	 XXLLOS72uAT4kg8MZMA35Hh4/yuOu9n6lM+i/uJUNMEAl1wPW2IaiJzNPR5lGbhV7I
	 y5dPsU0jJLaVQ==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id BCC4D383236
	for <usrp-users@lists.ettus.com>; Sun, 24 Dec 2023 13:28:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OJCbngGg";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50e49a0b5caso3742545e87.0
        for <usrp-users@lists.ettus.com>; Sun, 24 Dec 2023 10:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703442480; x=1704047280; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hMJh6KwI/Z8XQXNBRANqhqj2cWpxg8gHu5evovlFRwM=;
        b=OJCbngGg88aOFgjBbvD6ZcYQzsKdmhZEvxMVneWO6JGXrJJrSVv8EiCjiGQVow4uqw
         uxpY/W1y5+/dAk01sYnO4HDz6Rf+EFScrXHlFW3r6OSzGXrcStFSrZ0v9BMW3ziMpxDc
         PX0nxYa0eLkBxfjWD8n8JKgVkVTM85JjKRwePXdvScahsvIg/G3DbZ3z9J2vwlFEg4KI
         daSG/tdjaeYjaNyT/J+NjvRc+vxNCnzRte4x8ttbHhyKNNL9lWYAeV6DxzuPonnZcvhs
         xihHMwXK0QbdLs+7pI43goyf1jtqreFzrqiCFCwWws6Mbbar3cjA+Se0Lg9vIxIrVFCb
         mSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703442480; x=1704047280;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hMJh6KwI/Z8XQXNBRANqhqj2cWpxg8gHu5evovlFRwM=;
        b=YKnco1NOVvTy4cUMNoxs0pClCg//nVuYHXAaBwIv9+9fSw9l8/vZ2fFRwxfh87YMZp
         x8SpJj9GY3WS12gwYTzgJHEotuobdif+p4fVskDse/13IxSgS+SDJz79udEvdI73KPHV
         57rbRqxj4F59o8svdS0cWOyE/vZxn1+PUlnvKesL5MmvRDhP5LWMG/zJR9KvFgBoUn8s
         yUVOKcdrl/xZmjeBXirOYL1R9l4G2UafiXW62PDdwKDnClM5kwJ6lVrFM7UMoJKgWN3f
         A6yMlHke0pKAGI+o/d3YLMMy3U9ChTvMSewdZhOVFfdCjapWHYUuOgylSY1uwTNBhdBc
         LmQA==
X-Gm-Message-State: AOJu0YwGCCajNU3kLW3yGxGd/EXuVRvhJpbfaxfHWzdNU5ovjqRpWdcT
	ZsSxAbuay9hYc0Jq86OzIrjvjwKQRHHzJeAZzRKvdRr0JOkJlw==
X-Google-Smtp-Source: AGHT+IH826ue6tBt1dN+v1sXZD5suH1OY9W2kqKzD6CjuSTxfm9AIBrJH9z+TyE0cnSoOUnUM370Lya0fqeQCjYa55E=
X-Received: by 2002:a05:6512:3e26:b0:50e:3182:9366 with SMTP id
 i38-20020a0565123e2600b0050e31829366mr2201239lfv.102.1703442479569; Sun, 24
 Dec 2023 10:27:59 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PtuJYN95M4fCbdW+Pd6LghU-Wb0fjB57EvZMhbzFgOWYg@mail.gmail.com>
In-Reply-To: <CAA=S3PtuJYN95M4fCbdW+Pd6LghU-Wb0fjB57EvZMhbzFgOWYg@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sun, 24 Dec 2023 21:57:47 +0330
Message-ID: <CAA=S3PvcznL2E8dBJfEoo+L5VW7eJA__S8hyZu=S5UZRJ19sGw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: C6MUGA52PUZQGWNMQQQEYMWWHMAO7K3I
X-Message-ID-Hash: C6MUGA52PUZQGWNMQQQEYMWWHMAO7K3I
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can solve this error in RFNOC: RfnocError: ResolveError: Attempting to overwrite property `freq@USER:0'
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6MUGA52PUZQGWNMQQQEYMWWHMAO7K3I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8819629630421157249=="

--===============8819629630421157249==
Content-Type: multipart/alternative; boundary="000000000000e3dfde060d459b42"

--000000000000e3dfde060d459b42
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My problem is solved this error is related to uhd version I changed uhd
4.2.0 to 4.1.0 now my rfnoc block works like charm.


On Fri, Dec 22, 2023 at 4:58=E2=80=AFPM sp <stackprogramer@gmail.com> wrote=
:

> When I want to use RFNOC block in USRP I am faced with errors.....How can
> solve it? can anyone help? thanks in advance
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>> [ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: RfnocError: ResolveError:
>> Attempting to overwrite property `freq@USER:0' with a new value after it
>> was locked!
>> Traceback (most recent call last):
>>   File "/home/sp/Downloads/rfnoc45.py", line 211, in <module>
>>     main()
>>   File "/home/sp/Downloads/rfnoc45.py", line 189, in main
>>     tb.start()
>>   File "/usr/local/lib/python3/dist-packages/gnuradio/gr/top_block.py",
>> line 111, in start
>>     top_block_start_unlocked(self._impl, max_noutput_items)
>>   File
>> "/usr/local/lib/python3/dist-packages/gnuradio/gr/runtime_swig.py", line
>> 4832, in top_block_start_unlocked
>>     return _runtime_swig.top_block_start_unlocked(r, max_noutput_items)
>> RuntimeError: RfnocError: ResolveError: Attempting to overwrite property
>> `freq@USER:0' with a new value after it was locked!
>
>
>

--000000000000e3dfde060d459b42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My problem is solved this error is related to uhd version =
I changed uhd 4.2.0 to 4.1.0 now my rfnoc block works like charm.<div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Dec 22, 2023 at 4:58=E2=80=AFPM sp &lt;<a href=3D"mailto:stack=
programer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>When I w=
ant to use RFNOC block in USRP I am faced with errors.....How can solve it?=
 can anyone help? thanks in advance</div><div><br></div><div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">[WARNING] [0/Radio#0] Attempting to set=
 tick rate to 0. Skipping.<br>[ERROR] [RFNOC::GRAPH::DETAIL] 0/DDC#0: Rfnoc=
Error: ResolveError: Attempting to overwrite property `freq@USER:0&#39; wit=
h a new value after it was locked!<br>Traceback (most recent call last):<br=
>=C2=A0 File &quot;/home/sp/Downloads/rfnoc45.py&quot;, line 211, in &lt;mo=
dule&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/sp/Downloads/rf=
noc45.py&quot;, line 189, in main<br>=C2=A0 =C2=A0 tb.start()<br>=C2=A0 Fil=
e &quot;/usr/local/lib/python3/dist-packages/gnuradio/gr/top_block.py&quot;=
, line 111, in start<br>=C2=A0 =C2=A0 top_block_start_unlocked(self._impl, =
max_noutput_items)<br>=C2=A0 File &quot;/usr/local/lib/python3/dist-package=
s/gnuradio/gr/runtime_swig.py&quot;, line 4832, in top_block_start_unlocked=
<br>=C2=A0 =C2=A0 return _runtime_swig.top_block_start_unlocked(r, max_nout=
put_items)<br>RuntimeError: RfnocError: ResolveError: Attempting to overwri=
te property `freq@USER:0&#39; with a new value after it was locked!</blockq=
uote><br></div></div>
</blockquote></div>

--000000000000e3dfde060d459b42--

--===============8819629630421157249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8819629630421157249==--
